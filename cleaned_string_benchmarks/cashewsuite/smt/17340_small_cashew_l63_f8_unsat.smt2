(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "F" (str.++ "G" (str.++ "H" (str.++ "I" "J")))))))))))
(assert (= v0 (str.++ "K" (str.++ "L" (str.++ "M" (str.++ "N" (str.++ "O" (str.++ "P" (str.++ "Q" (str.++ "R" (str.++ "S" "T")))))))))))

(check-sat)
(get-model)
