(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)
(declare-const z String)


(assert (= (str.++ "abc" x) (str.++ "abcefg" y) ) )

(check-sat)
(get-model)