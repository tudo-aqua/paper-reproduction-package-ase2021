(set-logic QF_S)
(set-info :status sat)
(declare-const x1 String)
(declare-const x2 String)
(declare-const y1 String)
(declare-const y2 String)
(declare-const z String)
(declare-const m1 String)
(declare-const m2 String)

(assert (= z (str.++ x1 (str.++ "abc" x2) ) ) )
(assert (= z (str.++ y1 (str.++ "ef" y2) ) ) )
(assert (= z (str.++ m1 (str.++ "ce" m2) ) ) )
(assert (= (str.len z) 9) )


(check-sat)
(get-model)

