#!/bin/bash
./export_data_figure5.py

pushd diagrams/timing-new-2022;
    ./run_new_plot.sh || echo "A problem with gnuplot or epstopdf"
popd;
