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

(assert (str.in.re (str.++ var_4 "z" var_5 ) (re.* (re.++ (re.union (str.to.re "z") (str.to.re "a")) (re.union (str.to.re "z") (str.to.re "a"))))))
(assert (str.in.re var_5 (re.* (re.range "a" "u"))))
(assert (str.in.re var_5 (re.* (str.to.re "b"))))
(assert (str.in.re var_4 (re.* (re.range "a" "u"))))
(assert (str.in.re var_4 (re.* (str.to.re "a"))))
(assert (not (str.in.re "" re.nostr)))
(assert (<= 0  (str.len var_5)))
(check-sat)
