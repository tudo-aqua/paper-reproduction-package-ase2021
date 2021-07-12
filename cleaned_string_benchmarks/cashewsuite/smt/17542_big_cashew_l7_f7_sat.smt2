(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v6 () String)
(declare-fun v7 () String)
(declare-fun v8 () String)
(declare-fun v9 () String)
(declare-fun v10 () String)
(declare-fun v12 () String)
(declare-fun v11 () String)
(declare-fun v0 () String)
(declare-fun v1 () String)
(declare-fun v2 () String)
(declare-fun v3 () String)
(declare-fun v4 () String)
(declare-fun v5 () String)

(assert (= (str.len v0) 0))
(assert (>= (str.len v1) 20))
(assert (>= (str.len v2) 20))
(assert (>= (str.len v3) 20))
(assert (= v4 (str.++ v5 v6)))
(assert (= v7 (str.++ v8 v9)))
(assert (= v5 (str.++ v10 v11)))
(assert (= v3 (str.++ v0 v4)))
(assert (= v3 (str.++ v1 v12)))
(assert (= v3 (str.++ v2 v7)))
(assert (= v8 (str.++ "A" (str.++ "B" (str.++ "B" "C")))))
(assert (= v11 (str.++ "A" (str.++ "B" (str.++ "B" (str.++ "D" (str.++ "E" (str.++ "F" (str.++ "G" (str.++ "C" (str.++ "H" (str.++ "F" (str.++ "I" (str.++ "J" (str.++ "K" (str.++ "L" (str.++ "D" (str.++ "M" (str.++ "F" (str.++ "N" (str.++ "O" "P")))))))))))))))))))))
(assert (not (str.in.re v12 (str.to.re "Q"))))
(assert (not (str.in.re v10 (re.++ (str.to.re "A") (re.++ (str.to.re "B") (re.++ (str.to.re "B") (re.++ (str.to.re "D") (re.++ (str.to.re "E") (re.++ (str.to.re "F") (re.++ (str.to.re "G") (re.++ (str.to.re "C") (re.++ (str.to.re "H") (re.++ (str.to.re "F") (re.++ (str.to.re "I") (re.++ (str.to.re "J") (re.++ (str.to.re "K") (re.++ (str.to.re "L") (re.++ (str.to.re "D") (re.++ (str.to.re "M") (re.++ (str.to.re "F") (re.++ (str.to.re "N") (re.++ (str.to.re "O") (str.to.re "P")))))))))))))))))))))))

(check-sat)
(get-model)
