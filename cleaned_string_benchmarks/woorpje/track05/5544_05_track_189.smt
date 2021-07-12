(set-logic QF_S)
(declare-fun I () String)
(declare-fun G () String)
(declare-fun D () String)
(assert (= (str.++  "ffeefbfaabcebfdaf" D "cac")  (str.++  "ffeefbfaabcebfda" I "cac") ))
(assert (= (str.++  "ffceafedfeaffafde" G "cefdcccebceeadfaceaee")  (str.++  "ffceafedfeaffafde" G "cefdcccebceeadfaceaee") ))
(assert (= (str.++  "fecbbcadfbfbecaeafbcefacebaeafcedaacfcef" "")  (str.++  "fec" G "cadfbfbecaeafbcefacebaeafcedaacfcef") ))
(assert (<=(* (str.len G) 15) 300))
(check-sat)
(get-model)