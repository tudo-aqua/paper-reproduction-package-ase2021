(set-logic QF_S)
(declare-fun I () String)
(declare-fun G () String)
(declare-fun H () String)
(assert (= (str.++  "aaaaaaaaaaaaaaaaab" G G G G "b" I I "b" I)  (str.++  "a" G G G G G H G G G H "b" I "a" I "abaabaa") ))
(check-sat)
(get-model)
