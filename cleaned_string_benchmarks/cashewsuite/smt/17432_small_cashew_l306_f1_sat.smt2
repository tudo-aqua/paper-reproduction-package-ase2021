(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "B" (str.++ "E" (str.++ "F" (str.++ "C" "G")))))))))))

(check-sat)
(get-model)
