(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (not (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "B" (str.++ "B" (str.++ "D" (str.++ "C" (str.++ "E" (str.++ "F" "G"))))))))))))

(check-sat)
(get-model)
