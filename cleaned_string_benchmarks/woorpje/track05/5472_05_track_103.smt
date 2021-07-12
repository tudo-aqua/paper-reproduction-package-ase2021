(set-logic QF_S)
(declare-fun B () String)
(declare-fun F () String)
(declare-fun E () String)
(assert (= (str.++  "dcceaeefaae" B "eeacccfba")  (str.++  "dcceaeefaaee" F "ceebaeeacccfba") ))
(assert (= (str.++  "cfaeaeccff" E "cfcbbacddbbeefedddbcaeceb")  (str.++  "cfaeaeccffededccfcbbacddbbeefedddbcaeceb" "") ))
(assert (= (str.++  "feffbebebfdeeeaeacdecabcae" E "bbeafdfba")  (str.++  "feffbebebfdeeeaeacdecabcaeededcbbeafdfba" "") ))
(assert (>=(* (str.len B) 8) 80))
(assert (>=(* (str.len F) 20) 80))
(assert (<=(* (str.len F) 7) 371))
(check-sat)
(get-model)
