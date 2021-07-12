set terminal postscript eps size 5,4 enhanced color font 'Helvetica, 15'
set bmargin 4
set tmargin 6
set xlabel '# Sovled Problems'
set ylabel 'Response time (s) per problem'
set ytics (0, 1, 5, 30,90, 180,300) out nomirror scale 0
set logscale y 10
set key outside top center horizontal maxrows 2
#set key outside above
set ytics
set grid ytics lt 1 lc "#000000"



set datafile separator ","


set output 'timing.eps'
plot 'ABC.csv' using 1:2  with lines lt 1 lw 4 ti 'ABC', \
 'CVC4.csv' using 1:2 with lines lt 3 lw 4 ti 'CVC4', \
 'MULTI.csv' using 1:2 with lines lt rgb "black" lw 4 dt 2 ti 'CvcSeqCores', \
 'MULTI_NO_UNSAT_CHECK.csv' using 1:2 with lines lw 4 lt rgb "black" dt 9 ti 'CvcSeqEval', \
  'FASTEST.csv' using 1:2 with lines lt rgb "black" lw 4 dt 5 ti 'Earliest', \
   'FASTEST_NO_ABC_Z3STR4.csv' using 1:2 with lines lt rgb "black" lw 4 dt 7 ti 'EarliestTrusted', \
 'SEQ.csv' using 1:2 with lines lt rgb "coral" lw 4 dt 1 ti 'SEQ', \
 'Z3STR3.csv' using 1:2 with lines lt rgb "orange" lw 4 dt 4 ti 'Z3STR3', \
 'Z3STR4.csv' using 1:2 with lines lt rgb "orange" lw 4 dt 7 ti 'Z3STR4', \
 'OSTRICH.csv' using 1:2 with lines lt rgb "web-green" lw 4 dt 1 ti 'OSTRICH', \
 'PRINCESS.csv' using 1:2 with lines lt rgb "web-green" lw 4 dt 2 ti 'PRINCESS', \

