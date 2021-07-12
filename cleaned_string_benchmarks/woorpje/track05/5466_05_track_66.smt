(set-logic QF_S)
(declare-fun H () String)
(declare-fun C () String)
(declare-fun F () String)
(assert (= (str.++  "ccf" C "bbcaad" C H "c" F "cccfabaecd" C "bebbd" C "cadcaa")  (str.++  "ccf" C "bbcaad" C H "c" F "cccfabaecd" C "bebbdecadcaa") ))
(assert (= (str.++  "dad" C "b" C "acaaecbbffafffbfafadddbaccbfdacbcd")  (str.++  "dad" C "beacaa" C "cbbffafffbfafadddbaccbfdacbcd") ))
(assert (= (str.++  C "aaf" C "cfcdaacaadadacfa" C "ffcdbfbababbbbdcde")  (str.++  C "aaf" C "cfcdaacaadadacfa" C "ffcdbfbababbbbdcd" C) ))
(assert (>=(* (str.len F) 16) 32))
(assert (<=(* (str.len F) 14) 140))
(assert (<=(* (str.len C) 8) 40))
(check-sat)
(get-model)
