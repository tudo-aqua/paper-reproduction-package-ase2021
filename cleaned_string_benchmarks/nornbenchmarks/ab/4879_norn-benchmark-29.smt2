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

(assert (str.in.re var_1 (re.* (re.range "a" "u"))))
(assert (str.in.re var_1 (re.* (re.++ (re.union (str.to.re "b") (str.to.re "a")) (str.to.re "b")))))
(assert (str.in.re var_1 (re.++ (re.++ (re.++ (re.* (re.union (str.to.re "a") (str.to.re "b"))) (str.to.re "b")) (str.to.re "a")) (re.* (re.union (str.to.re "a") (str.to.re "b"))))))
(assert (not (str.in.re "" re.nostr)))
(check-sat)
