(set-logic QF_S)
(declare-fun D () String)
(declare-fun A () String)
(assert (= (str.++  "jcj" D "hadca")  (str.++  "j" A "ieecghadca") ))
(check-sat)
(get-model)
