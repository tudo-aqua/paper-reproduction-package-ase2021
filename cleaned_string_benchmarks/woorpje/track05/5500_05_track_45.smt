(set-logic QF_S)
(declare-fun I () String)
(declare-fun B () String)
(declare-fun G () String)
(declare-fun E () String)
(declare-fun A () String)
(assert (= (str.++  "bdfbade" A "edfccedbebacc")  (str.++  "bd" G "fc" E "ccedbebacc") ))
(assert (= (str.++  "cebfcdefdbaffffefdcbbaeeecacfebfcddebcdb" "")  (str.++  "cebfcdefdbaffffefdcbb" I B "ebfcddebcdb") ))
(assert (= (str.++  "abdefcaaccdbfffdfccabecdf" B "bababfbcfcfe")  (str.++  "abdefcaaccdbfffdfccabecdf" B "bababfbcfcfe") ))
(assert (<=(* (str.len G) 10) 270))
(assert (<=(* (str.len I) 12) 252))
(assert (<=(* (str.len A) 13) 1898))
(assert (<=(* (str.len B) 11) 154))
(check-sat)
(get-model)