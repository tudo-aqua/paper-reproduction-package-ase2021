(set-logic QF_S)
(declare-fun I () String)
(declare-fun H () String)
(declare-fun K () String)
(declare-fun F () String)
(declare-fun G () String)
(declare-fun E () String)
(declare-fun J () String)
(assert (= (str.++  F F F F "a" F F F F "b" I "ab" J)  (str.++  "a" E G H G H G "b" K K "baa") ))
(check-sat)
(get-model)
