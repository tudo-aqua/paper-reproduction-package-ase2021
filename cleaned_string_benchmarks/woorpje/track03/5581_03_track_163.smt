(set-logic QF_S)
(declare-fun H () String)
(declare-fun K () String)
(declare-fun I () String)
(declare-fun F () String)
(declare-fun J () String)
(declare-fun L () String)
(declare-fun M () String)
(assert (= (str.++  H H "a" H H "b" I I I "ab" K K "b" M)  (str.++  "a" H F "a" F "a" J J J J J J J J "b" L L L L "b" L L "baa") ))
(check-sat)
(get-model)
