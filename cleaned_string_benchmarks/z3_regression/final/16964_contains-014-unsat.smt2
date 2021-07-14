(set-logic QF_S)
(set-info :status unsat)
(declare-const x1 String)
(declare-const x2 String)
(declare-const y String)
(declare-const z String)
(declare-const b1 Bool)
(declare-const b2 Bool)
(declare-const b3 Bool)


(assert (= b1 (str.contains x1 y ) ) )

(assert (= b2 (str.contains x2 z ) ) )

(assert (= b3 (str.contains y z ) ) )

(assert (= x1 x2))

(assert b1)

(assert (not b2))

(assert b3)

(check-sat)
(get-model)
