(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)
(declare-fun v1 () String)
(declare-fun v2 () String)
(declare-fun v3 () String)

(assert (= (str.len v0) 0))
(assert (not (= v0 (str.++ "A" (str.++ "B" (str.++ "B" (str.++ "A" "C")))))))
(assert (= v1 v0))
(assert (= v0 v0))
(assert (= v2 (str.++ v3 v1)))
(assert (= v3 (str.++ "D" (str.++ "C" (str.++ "E" (str.++ "F" "G"))))))
(assert (not (str.in.re v0 (str.to.re "H"))))

(check-sat)
(get-model)
