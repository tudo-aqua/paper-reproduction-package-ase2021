(set-logic QF_S)

(declare-fun var_0 () String)
(declare-fun var_1 () String)
(declare-fun var_2 () String)
(declare-fun var_3 () String)
(declare-fun var_4 () String)
(declare-fun var_5 () String)
(declare-fun var_6 () String)
(declare-fun var_7 () String)
(declare-fun var_8 () String)
(declare-fun var_9 () String)
(declare-fun var_10 () String)
(declare-fun var_11 () String)
(declare-fun var_12 () String)

(assert (str.in.re var_0 (re.* (str.to.re "b"))))
(assert (str.in.re var_0 (str.to.re "")))
(assert (str.in.re var_0 (re.* (re.range "a" "u"))))
(assert (not (str.in.re var_0 (re.++ (re.* (str.to.re "a")) (re.++ (str.to.re "b") (re.* (str.to.re "b")))))))
(assert (and (<= 0  (str.len var_0)) (not (not (exists ((v Int)) (= (* v 2 ) (+ (str.len var_0) 2 )))))))
(check-sat)
