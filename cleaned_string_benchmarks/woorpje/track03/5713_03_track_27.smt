(set-logic QF_S)
(declare-fun S () String)
(declare-fun I () String)
(declare-fun K () String)
(declare-fun H () String)
(declare-fun R () String)
(declare-fun G () String)
(declare-fun V () String)
(declare-fun N () String)
(declare-fun M () String)
(declare-fun P () String)
(assert (= (str.++  G I I I "a" I G I "a" G I I I "a" I G I "b" K K "aa" K K "a" K "b" M M N "b" P S "ba")  (str.++  "a" H I I "aaa" I "a" I "aa" M "a" M M M "a" K K M "a" M M M "a" K K "b" N M "a" N M "ab" R R R R "b" V V "baa") ))
(check-sat)
(get-model)
