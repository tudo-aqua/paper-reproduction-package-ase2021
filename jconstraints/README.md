# JConstraints
JConstraints is the SMT abstraction library in Java used to implement the strategies.
The code is maintained in the `jconstraints/jconstraints-metasolver` module.

The other solver demonstrate the additional integrations not part of the main JConstraints project build for this project.

## Building

Just run the `./compile.sh` script.

## Running JConstraints

Execute the following command ` java -jar jconstraints/jconstraints-runner/build/libs/jconstraints-runner-0.9.7-BV-SNAPSHOT-with-all.jar -smt ../../path_to_smt_file -s SOLVER_NAME`. Valid SOLVER_NAMES are z3, cvc5, ostrich, princess, abc, z3str4, early, and earlytrusted. To run jconstraints-z3str3 invoke the jar in the following way:
`java -Dz3.options="string_solver=z3str3" -jar jconstraints/jconstraints-runner/build/libs/jconstraints-runner-0.9.7-BV-SNAPSHOT-with-all.jar -smt ../../path_to_smt_file -s z3`.

*NOTICE:* This binary will only work on x86_64 Linux distributions as the involved binaries are only included for these machines.
