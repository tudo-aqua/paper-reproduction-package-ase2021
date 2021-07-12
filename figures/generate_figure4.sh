#!/bin/bash
./export_data_figure4.py

pushd diagrams/timing-new;
    ./run_new_plot.sh || echo "A problem with gnuplot or epstopdf"
popd;
