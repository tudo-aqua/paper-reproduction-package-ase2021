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

(assert (str.in.re (str.++ var_7 "z" var_7 ) (re.* (str.to.re "z"))))
(assert (str.in.re var_7 (re.* (re.range "a" "u"))))
(assert (not (str.in.re (str.++ "a" var_7 "z" "a" var_7 ) (re.* (re.++ (str.to.re "b") (re.++ (re.* (str.to.re "z")) (str.to.re "b")))))))
(assert (and (<= (str.len var_7) 0 ) (<= 0  (str.len var_7))))
(check-sat)
