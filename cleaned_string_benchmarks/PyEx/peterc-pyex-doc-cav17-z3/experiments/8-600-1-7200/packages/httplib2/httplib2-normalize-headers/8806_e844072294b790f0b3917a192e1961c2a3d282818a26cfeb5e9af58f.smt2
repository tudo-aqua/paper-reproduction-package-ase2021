(declare-fun key2 () String)

(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not (not (= (ite (str.contains key2 "O") 1 0) 0))) (not (not (= (ite (str.contains key2 "N") 1 0) 0)))) (not (not (= (ite (str.contains key2 "M") 1 0) 0)))) (not (not (= (ite (str.contains key2 "L") 1 0) 0)))) (not (not (= (ite (str.contains key2 "K") 1 0) 0)))) (not (not (= (ite (str.contains key2 "J") 1 0) 0)))) (not (not (= (ite (str.contains key2 "I") 1 0) 0)))) (not (not (= (ite (str.contains key2 "H") 1 0) 0)))) (not (not (= (ite (str.contains key2 "G") 1 0) 0)))) (not (not (= (ite (str.contains key2 "F") 1 0) 0)))) (not (not (= (ite (str.contains key2 "E") 1 0) 0)))) (not (not (= (ite (str.contains key2 "D") 1 0) 0)))) (not (not (= (ite (str.contains key2 "C") 1 0) 0)))) (not (not (= (ite (str.contains key2 "B") 1 0) 0)))) (not (not (= (ite (str.contains key2 "A") 1 0) 0)))))

(check-sat)

;(get-value (key2))