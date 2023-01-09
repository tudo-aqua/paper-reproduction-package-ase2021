#!/bin/bash
./export_data_figure8.py

pushd diagrams/timeing-qf-sq;
    ./run_new_plot.sh || echo "A problem with gnuplot or epstopdf"
popd;
