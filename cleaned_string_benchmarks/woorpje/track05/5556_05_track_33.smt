(set-logic QF_S)
(declare-fun I () String)
(declare-fun H () String)
(declare-fun B () String)
(declare-fun A () String)
(declare-fun J () String)
(assert (= (str.++  B "bc" I "a" A "b" J "addbeadbcbfdaeddbe")  (str.++  "bcacbccaafdfab" H "adbcbfdaeddbe") ))
(assert (= (str.++  "efabaeccfcbdcbcdbaacba" J "cabdcccbbdbeebba")  (str.++  "efabaeccfcbdcbcdbaacba" J I "bdcccbbdbeebba") ))
(assert (= (str.++  "ecdddebeeddedcedcdfbeceeaecdeaceacecd" I "e")  (str.++  "ecdddebeeddedcedcdfbeceeaecdeaceacecd" I "e") ))
(assert (<=(* (str.len B) 11) 671))
(assert (<=(* (str.len A) 14) 140))
(assert (>=(* (str.len I) 3) 6))
(assert (<=(* (str.len I) 7) 175))
(check-sat)
(get-model)
