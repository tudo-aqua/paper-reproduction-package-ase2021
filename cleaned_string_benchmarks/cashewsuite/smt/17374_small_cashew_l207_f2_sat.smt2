(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (not (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "C" (str.++ "D" (str.++ "A" (str.++ "E" (str.++ "F" (str.++ "G" "H"))))))))))))

(check-sat)
(get-model)
