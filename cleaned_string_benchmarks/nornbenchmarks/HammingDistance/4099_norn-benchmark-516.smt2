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

(assert (str.in.re (str.++ var_7 "z" var_8 ) (re.++ (re.* (re.++ (str.to.re "a") (re.++ (re.* (re.union (str.to.re "b") (str.to.re "a"))) (str.to.re "z")))) (re.++ (str.to.re "a") (re.* (re.union (str.to.re "b") (str.to.re "a")))))))
(assert (str.in.re (str.++ var_7 "z" var_8 ) (re.++ (re.* (re.union (str.to.re "z") (re.++ (str.to.re "a") (re.++ (re.* (str.to.re "a")) (str.to.re "z"))))) (re.++ (str.to.re "a") (re.* (str.to.re "a"))))))
(assert (str.in.re var_8 (re.* (re.range "a" "u"))))
(assert (str.in.re var_7 (re.* (re.range "a" "u"))))
(assert (not (str.in.re (str.++ var_7 "z" var_8 "a" ) (re.++ (re.* (re.union (str.to.re "z") (re.++ (str.to.re "a") (re.++ (re.* (str.to.re "a")) (str.to.re "z"))))) (re.++ (str.to.re "a") (re.* (str.to.re "a")))))))
(check-sat)
