(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (= (str.++ x y) (str.++ "abc" z) ) )
(assert (= (str.len x) 6 ) )



(check-sat)
(get-model)