(set-logic QF_S)
(declare-fun M () String)
(declare-fun F () String)
(declare-fun E () String)
(assert (= (str.++  "ehbfhaffcgchhdbeffga" E F "fhe")  (str.++  "eh" M "dedeefhe") ))
(check-sat)
(get-model)
