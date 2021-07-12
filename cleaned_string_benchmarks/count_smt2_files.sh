#!/bin/bash

APPSCAN=$(find ./appscan | grep .smt | wc -l)
BANDITFUZZ=$(find ./banditfuzz | grep .smt | wc -l)
CASHESUITE=$(find ./cashewsuite | grep .smt2 | wc -l)
JOACOSUITE=$(find ./joacosuite| grep .smt | wc -l)
SVCOMP=$(find ./SV-COMP| grep .smt | wc -l)
KALUZA=$(find ./Kaluza| grep .smt | wc -l)
KAUSLER=$(find ./kauslersuite | grep .smt2 | wc -l)
LEET=$(find ./Leetcode | grep .smt | wc -l)
LIGHT=$(find ./light | grep .smt | wc -l)
NORN=$(find ./nornbenchmarks | grep .smt | wc -l)
PISA=$(find ./pisa | grep .smt | wc -l)
PYEX=$(find ./PyEx | grep .smt | wc -l)
SLOTH=$(find ./slothtests | grep .smt | wc -l)
STRANGER=$(find ./strangersuite | grep .smt | wc -l)
STRINGFUZZ=$(find ./stringfuzz | grep .smt | wc -l)
WOORPJE=$(find ./woorpje | grep .smt | wc -l)
Z3=$(find ./z3_regression | grep .smt | wc -l)


echo "Appscan: $APPSCAN"
echo "banditfuzz: $BANDITFUZZ"
echo "cashewsuite: $CASHESUITE"
echo "joacosuite: $JOACOSUITE"
echo "SV-COMP: $SVCOMP"
echo "Kaluza: $KALUZA"
echo "kauslersuite: $KAUSLER"
echo "Leetcode: $LEET"
echo "light: $LIGHT"
echo "nornbenchmarks: $NORN"
echo "pisa: $PISA"
echo "PyEx: $PYEX"
echo "slothtests: $SLOTH"
echo "strangersuite: $STRANGER"
echo "stringfuzz $STRINGFUZZ"
echo "woorpje: $WOORPJE"
echo "z3_regression: $Z3"
echo "total: $(expr $APPSCAN + $BANDITFUZZ + $CASHESUITE + $JOACOSUITE + $KALUZA + $KAUSLER + $LEET + $LIGHT + $NORN + $PISA + $PYEX + $SLOTH + $STRANGER + $STRINGFUZZ + $WOORPJE + $Z3 + $SVCOMP)"
