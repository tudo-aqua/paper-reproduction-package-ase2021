(set-logic QF_S)
(set-info :status sat)
(declare-const i Int)

(assert (= i (str.indexof "abc" "b" 4) ) )

(check-sat)
(get-model)
