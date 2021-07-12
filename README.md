Data-Driven Design and Evaluation of SMT Meta-Solving Strategies: Balancing Performance, Accuracy, and Cost
============

This repository is the reproduction package for the Paper
"Data-Driven Design and Evaluation
of SMT Meta-Solving Strategies: Balancing Performance, Accuracy, and Cost
"
by Malte Mues and Falk Howar, accepted for Automated Software Engineering 2021 (ASE 2021).

Here is the abstract so that you already have an idea of the paper's goal:

> Many modern software engineering tools integrate SMT decision procedures and rely on the accuracy and performance of SMT solvers. We describe four basic patterns for integrating constraint solvers (earliest verdict, majority vote, feature-based solver selection, and verdict-based second attempt) that can be used for combining individual solvers into meta-decision procedures that balance accuracy, performance, and cost – or optimize for one of these metrics. In order to evaluate the effectiveness of meta-solving, we analyze and minimize 16 existing benchmark suites and benchmark seven state-of-the-art SMT solvers on 17k unique instances. From the obtained performance data, we can estimate the performance of different meta-solving strategies. We validate our results by implementing and analyzing one strategy. As additional results, we obtain (a) the first benchmark suite of unique SMT string problems with validated expected verdicts, (b) an extensive dataset containing data on benchmark instances as well as on the performance of individual decision procedures and several meta-solving strategies on these instances, and (c) a framework for generating data that can easily be used for similar analyses on different benchmark instances or for different decision procedures.

As stated, the contribution consist of multiple steps. The documentation of the reproduction package is oriented along these steps. It will first present the duplicate detection and operator feature computation. In continuation, we present the ground truth computation and the conducted performance analysis. The material for the feature-based solver selection concludes the reproduction package.

Cleaning Benchmarks
-----------
We have detected duplicates in the benchmark that are equally structured programs, only distinct by the variable naming (c.f. Definition 1 in the paper). The detection is implemented as part of the JConstraints library and available in our [JConstraints repository](https://github.com/tudo-aqua/jconstraints/tree/develop/jconstraints-runer/src/main/java/structuralEquivalence). With the reproduction package, we ship the used Java binary.

The binary will create `*.analysis` files that contain some
statistics about the analyzed SMT problems.
The program requires at least 64 GB RAM to succeed and also some time,
especially for analyzing the PyEx benchmark.
Change to the `cleaned_string_benchmarks` folder and run:
`./run_duplicate_computation.sh` to rerun the duplicate detection algorithm on the complete data set.
You will find hints in the script, if you just want to rerun the duplicate detection on a subset of the data set.
If the script is run on the original data set, it will produce a long lists of duplicates after each problem in the `*.analysis` files. They are not available on the cleaned benchmarks that we ship with the reproduction package.
The `clean_duplicates.py` script has been used to remove the files listed in the analysis output from the file system.

There is one Problem in the z3_regression folder
(named Z3str3 in the paper Table 1) that cannot be parsed
by JConstraints as the `QuotedRegex` function is not interpreted
correctly by JConstraints.
You will see something like:
```
gov.nasa.jpf.constraints.smtlibUtility.parser.SMTLIBParserNotSupportedException: Cannot parse the following command: (define-fun QuoteRegex ((aRegex (RegEx String))) (RegEx String) (re.++ (re.++ (str.to.re """") aRegex) (str.to.re """")))
    at gov.nasa.jpf.constraints.smtlibUtility.parser.SMTLIBParser.parseSMTProgram(SMTLIBParser.java:166)
    at gov.nasa.jpf.constraints.smtlibUtility.parser.SMTLIBParser.parseSMTProgramFromFile(SMTLIBParser.java:132)
    at structuralEquivalence.Processor.parseFile(Processor.java:33)
    at structuralEquivalence.StructuralEquivalenceCheck.checkSMTFile(StructuralEquivalenceCheck.java:85)
    at structuralEquivalence.StructuralEquivalenceCheck.runProgram(StructuralEquivalenceCheck.java:60)
    at structuralEquivalence.StructuralEquivalenceCheck.main(StructuralEquivalenceCheck.java:48)
    ...
```


Operator Features
--------------------
The operators use in the benchmarks are also counted using the (JConstraints library)[https://github.com/tudo-aqua/jconstraints/tree/develop/jconstraints-runner/src/main/java/tools]. The source code is available on GitHub in our JConstraints repository.
We ship in the reproduction package the exact binary version used for the paper, as the tool is continuously improved. Just change into `cleand_string_benchmarks/operator-statistics` and run: `./run-all.sh`. The script will output for each benchmark file an `*.out` file that contains the used operators. For example, the file `5_t06.out` belonging to the appscan benchmark `5_t06smt2` looks as follows:

```
==  2
||  3
not 2
assert  5
variable    5
str.suffixof    5
str.++  1
ite 5
str.indexof 3
=   8
-   3
>   3
```

It is important to notice that we separate the `=` operator from the `==`operator.
`=` is used explicitly for string equality, while we use `==` for every other form of equality used in the benchmarks.


### Load Data into Database

We ship the reproduction package with a sqlite3 database containing the data used for the paper. But you might recreate it rerunning the scripts on your results. We invite you to experiment with our infrastructure and report on your experience.

The operator features and the duplicate reduction is reported in Table 1 in the paper.
There are two tables in the database involved for creating this table:
the _BENCHMARKS_ table and the _OPERATOR&#95;FEATURES_ table.
We describe first how to create Table 1 with the provided data and in continuation
the required steps to reproduce the tables.

#### Computing Table 1
In the figures folder, there is the script `./generate_table1.py`. It accepts the flag `-o`, if you want to generate the figures with the provided data. You might run it without the flag, to use your freshly computed data. The script will generate the file `figures/tables/features/feature_table.tex`. If you compile this file with pdflatex, you will get Table 1.

#### Loading the Fresh Data
We provide two scripts. Change to the scripts folder and run them:
```
cd scripts
./import_feature_per_file.py
./load_benchmarks.py -f ../cleaned_string_benchmarks/
```

The load_benchmarks script finds the benchmarks by indexing the folder passed as argument value. This is supposed to work out of the box.

Solver Runs
-----------

We have run the solvers using the [BenchExec framework](https://github.com/sosy-lab/benchexec). You might find the tool definitions used on [our BenchExec fork](https://github.com/tudo-aqua/benchexec/tree/tudo-tools). We report all measured runs on our machine in the SQLite database found in the file `database/string_schema.sqlite`. From the reported runs, we selected the newest and created the tables based on them. Feel free to inspect the logic embedded in the SQLite data base and the views for details on the internal processing. The paper reports in details on the used solver versions. Reproducing these runs requires large amounts of CPU time and is not the primarily goal of this reproduction package, but it should provide sufficient information along with the paper to rerun the experiments, if you want to.

A BenchExec run produces a result file summarizing a run set. This result can be transformed into a csv file. In addition, we do an extra step of log scraping to extract additional information printed to the log. These two result processing steps feed the tables `BENCHEXEC_X` and `LOG_ANALYSIS_X` where `X` is a placeholder for a solver name. These two results are then reduced into one view for each solver just called as the solver.

The *CvcSeqCores* strategy is called _multi_ in the database and the *CvcSeqEval* strategy is called _multi&#95;no&#95;unsat&#95;check_. *Earliest* is called _fastest_ and *EarliestTrusted* is called _fastest&#95;no&#95;abc&#95;z3str4_. The implementation of the strategies is part of the JConstraints repository in the [metasolver package](https://github.com/tudo-aqua/jconstraints/tree/unsat-core-checking/jconstraints-metasolver/src/main/java/tools/aqua/jconstraints/solvers/portfolio/sequential).


All other figures in the paper are computed on top of these runs and the processing of the run result data is explicitly part of the reproduciton package. Our original pipeline used to compute the results that are presented in the paper works with a PostgreSQL database. As it is more complicated to distribute a copy of an PostgreSQL database than using a SQLite  database, we ship the reproduction package with a SQLite database containing the data. You find the original scripts for converting the benchexec output and the log files in the postgres_script folder of the reproduction package.

### Computing the Heap Figure 2
Figure 2 uses the ground truth results computed by model validation and majority voting. The original ground truth calculation query is available in the file `postgres_scripts/database/sqlqueries/workflow_queries.py`.

To generate the figure, just change into the `figures` folder and run the script: `./generate_figure2.py`. This creates the output `figures/heatmap/heatmap_small.tex` containing the data for Figure 2. Run pdflatex to compile it as a pdf, if needed.

### Computing the SAT/UNSAT Plots for Figure 3
Figure 3 uses the results of the solvers and the created ground truth labels.
To generate the figure, just change into the `figures` folder and run the script: `./generate_figure3.py`. This creates the output `figures/summary_sat_unsat/summary_unsat.tex` and `figures/summary_sat_unsat/summary_sat.tex` containing the data for Figure 3. Run pdflatex to compile it as a pdf, if needed. Figure 3 in the paper combines these two tikzpictures using a minipage environment.

### Computing Table 2
Table 2 compares the individual solver results with the predicted ground truth as described in the paper. Our used SQL queries are in the script `figures/generate_table2.py`. Just change in the `figures` folder and run the script. It will generate the file `tables/solver_performance/table-solver-performance-generated.tex` that can be passed to pdflatex. The time in seconds differs slightly in the generated paper compared to the numbers reported in the paper. For example, the SEQ solver needs 19 s more than in the paper. This is due to different internal precision in SQLite and PostgreSQL for adding floating points. The numbers presented in the paper are computed running PostgreSQL and somehow the sum function differs in precision of the sum, if run on SQLite. The differences are only a few seconds and are not relevant compared to the overall runtime of the problems.

### Computing Figure 4
In comparison to all other figures seen so far, Figure 4 is computed by gnuplot. The python scripts extracts the data into csv-files and `diagrams/timing-new/timing.plot` is the gnuplot script converting this into an eps file. This eps file is used in the paper and converted to a pdf by epstopdf.

This script requires gnuplot and the epstopdf tool installed and working to run it. If you see this line `A problem with gnuplot or epstopdf`, there was a problem with either gnuplot or epstopdf on your machine.
`./generate_figure4.sh` in the `figures` folder bundles all required steps. If it executes successful, there should be the file `diagrams/timing-new/timing.pdf` that reproduces Figure 4.

Feature Selection (Table 3)
--------------

The last part of experiments in the evaluation tried to train a classifier for feature selection. The results are presented in Table 3. To replicate this experiment _pandas_, _sklearn_ and _numpy_ are required. We have added a `requirements.txt` file to the figures folder that should help to create a suitable virtual environment for running the python scripts.
Once the requirements are installed, it is possible to run the `./generate_table3.py` script in the figures folder. It will output the table in the file `tables/learning/learning_table.tex`. Running pdflatex recreates a similar table to the one in the paper. As the script retrains the classifier, smaller divergences are expected here in the numbers. The code describes the complete learning process.
