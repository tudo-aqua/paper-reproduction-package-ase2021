(set-logic QF_S)
(declare-fun F () String)
(declare-fun E () String)
(assert (= (str.++  "cbab" F "abaacbcacb")  (str.++  "cbabacccc" E "bbbaabaacbcacb") ))
(check-sat)
(get-model)
