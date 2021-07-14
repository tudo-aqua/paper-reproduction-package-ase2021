(set-logic QF_S)
(set-info :status unsat)
(declare-const x1 String)
(declare-const x2 String)
(declare-const y1 String)
(declare-const y2 String)
(declare-const z1 String)
(declare-const z2 String)

(declare-const b1 Bool)
(declare-const b2 Bool)
(declare-const b3 Bool)


(assert (= b1 (str.contains x1 y1 ) ) )

(assert (= b2 (str.contains x2 z2 ) ) )

(assert (= b3 (str.contains y2 z1 ) ) )

(assert (= x1 x2) )

(assert (= y1 y2) )

(assert (= z1 z2) )

(assert b1)

(assert (not b2))

(assert b3)

(check-sat)
(get-model)
