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

(assert (str.in.re (str.++ "b" var_4 ) (re.* (re.range "a" "u"))))
(assert (str.in.re var_5 (re.* (re.range "a" "u"))))
(assert (str.in.re var_4 (re.* (re.range "a" "u"))))
(assert (str.in.re (str.++ var_5 "a" ) (re.* (re.range "a" "u"))))
(check-sat)
