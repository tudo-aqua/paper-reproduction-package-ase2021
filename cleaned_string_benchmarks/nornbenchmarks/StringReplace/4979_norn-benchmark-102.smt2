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

(assert (str.in.re (str.++ var_4 "z" ) (re.++ (re.* (re.++ (re.union (str.to.re "a") (str.to.re "c")) (re.++ (re.* (re.union (str.to.re "a") (str.to.re "c"))) (str.to.re "z")))) (re.union (str.to.re "") (re.++ (re.union (str.to.re "a") (str.to.re "c")) (re.* (re.union (str.to.re "a") (str.to.re "c"))))))))
(assert (str.in.re "" (re.* (re.range "a" "u"))))
(assert (str.in.re var_4 (re.* (re.range "a" "u"))))
(assert (not (str.in.re var_4 (re.* (re.union (str.to.re "a") (str.to.re "c"))))))
(check-sat)
