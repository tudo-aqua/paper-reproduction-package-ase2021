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

(assert (str.in.re (str.++ var_9 "z" "b" var_10 ) (re.++ (re.* (re.union (str.to.re "z") (re.++ (re.union (str.to.re "b") (re.union (str.to.re "a") (str.to.re "c"))) (re.++ (re.* (str.to.re "b")) (re.union (str.to.re "a") (str.to.re "c")))))) (re.union (str.to.re "") (re.++ (re.union (str.to.re "b") (re.union (str.to.re "a") (str.to.re "c"))) (re.* (str.to.re "b")))))))
(assert (str.in.re (str.++ "b" var_10 ) (re.* (re.range "a" "u"))))
(assert (str.in.re var_9 (re.* (re.range "a" "u"))))
(assert (str.in.re var_10 (re.* (re.range "a" "u"))))
(assert (str.in.re (str.++ var_9 "a" ) (re.* (re.range "a" "u"))))
(assert (not (str.in.re (str.++ var_9 "a" "z" var_10 ) (re.++ (re.* (re.union (str.to.re "z") (re.union (str.to.re "a") (str.to.re "c")))) (re.union (str.to.re "") (re.++ (str.to.re "b") (re.* (re.union (str.to.re "b") (re.union (str.to.re "a") (str.to.re "c"))))))))))
(check-sat)
