(set-logic QF_S)
(declare-fun R () String)
(declare-fun K () String)
(declare-fun H () String)
(declare-fun G () String)
(declare-fun F () String)
(declare-fun L () String)
(declare-fun M () String)
(declare-fun Q () String)
(assert (= (str.++  F G G G "a" F G G G "b" K "aab" L "b" R)  (str.++  "a" H "aa" G L L "b" M M "b" Q Q "baa") ))
(check-sat)
(get-model)
