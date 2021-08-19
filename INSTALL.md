This repository uses the Git LFS feature: https://git-lfs.github.com. You will need to install it
to clone the repository.

The reproduction package is written as a collection of python and shell scripts.
The data is provided as a SQLite3 database file (which is the reason for the Git LFS support). Python ships support for handling SQLite3 with the standard library.
We have run them with python 3.9 and a normal shell. We tested the scripts on OSX and a current Ubuntu LTS version (20.04).
The scripts will not run on Windows.

As a first step, clone the repository. Change to the `figures` folder
and run any of the scripts. For testing, we recomend `generate_table1.py -o`.

For reproducing Table 3, a couple of python packages are required that are not part of the standard python library.
Change to the `figures` folder and install them from the requirements.txt with: `pip install -r requirements.txt`.
We recommend to setup a virtual python environment first, but you might install them to your
Systems python environment as well, if you just want to get things running.

Figure 4 uses _gnuplot_ and _ghostscript_ to compute the final figure from the data.
Please install them before running `generate_figure4.sh`.

The standard packagemanger ship them.
You might run `brew install ghostscript gnuplot`
or `apt install ghostscript gnuplot` to install them on an OSX or Ubuntu system.
