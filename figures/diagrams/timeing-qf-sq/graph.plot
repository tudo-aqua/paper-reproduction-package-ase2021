set terminal postscript eps size 5,4 enhanced color font 'Helvetica, 15'
set bmargin 4
set tmargin 6
set xlabel '# Solved Problems'
set ylabel 'Response time (s) per problem'
set ytics (0, 1, 5, 30,90, 180,300) out nomirror scale 0
set logscale y 10
set key outside top center horizontal maxrows 2
#set key outside above
set ytics
set grid ytics lt 1 lc rgb "#000000"



set datafile separator ","


set output 'timeing.eps'
plot 'yices2.csv' using 1:2  with lines lt 1 lw 4 ti 'Yices2', \
 'CVC5.csv' using 1:2 with lines lt 3 lw 4 ti 'cvc5', \
 'z3.csv' using 1:2 with lines lt rgb "coral" lw 4 dt 1 ti 'Z3', \
 'mathsat.csv' using 1:2 with lines lt rgb "orange" lw 4 dt 4 ti 'MathSat5', \
 'bitwuzla.csv' using 1:2 with lines lt rgb "orange" lw 4 dt 7 ti 'Bitwuzla', \
 'PRINCESS.csv' using 1:2 with lines lt rgb "web-green" lw 4 dt 2 ti 'PRINCESS', \
 'earliest.csv' using 1:2 with lines lt rgb "black" lw 4 dt 5 ti 'SEarliest'

