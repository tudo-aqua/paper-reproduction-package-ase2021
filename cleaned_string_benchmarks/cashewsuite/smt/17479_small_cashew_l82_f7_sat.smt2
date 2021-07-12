(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v6 () String)
(declare-fun v7 () String)
(declare-fun v8 () String)
(declare-fun v9 () String)
(declare-fun v10 () String)
(declare-fun v12 () String)
(declare-fun v11 () String)
(declare-fun v13 () String)
(declare-fun v0 () String)
(declare-fun v1 () String)
(declare-fun v2 () String)
(declare-fun v3 () String)
(declare-fun v4 () String)
(declare-fun v5 () String)

(assert (= (str.len v0) 0))
(assert (>= (str.len v1) 20))
(assert (= v2 "A"))
(assert (= v3 (str.++ v4 v5)))
(assert (= v6 (str.++ v7 v8)))
(assert (= v4 (str.++ v9 v10)))
(assert (= v7 (str.++ v11 v2)))
(assert (= v12 (str.++ v0 v3)))
(assert (= v12 (str.++ v13 v6)))
(assert (= v10 (str.++ "B" (str.++ "C" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "F" (str.++ "G" (str.++ "H" (str.++ "I" (str.++ "F" (str.++ "J" (str.++ "K" (str.++ "L" (str.++ "M" (str.++ "D" (str.++ "N" (str.++ "F" (str.++ "O" (str.++ "P" "Q")))))))))))))))))))))
(assert (not (str.in.re v11 (str.to.re "A"))))
(assert (not (str.in.re v9 (re.++ (str.to.re "B") (re.++ (str.to.re "C") (re.++ (str.to.re "C") (re.++ (str.to.re "D") (re.++ (str.to.re "E") (re.++ (str.to.re "F") (re.++ (str.to.re "G") (re.++ (str.to.re "H") (re.++ (str.to.re "I") (re.++ (str.to.re "F") (re.++ (str.to.re "J") (re.++ (str.to.re "K") (re.++ (str.to.re "L") (re.++ (str.to.re "M") (re.++ (str.to.re "D") (re.++ (str.to.re "N") (re.++ (str.to.re "F") (re.++ (str.to.re "O") (re.++ (str.to.re "P") (str.to.re "Q")))))))))))))))))))))))

(check-sat)
(get-model)
