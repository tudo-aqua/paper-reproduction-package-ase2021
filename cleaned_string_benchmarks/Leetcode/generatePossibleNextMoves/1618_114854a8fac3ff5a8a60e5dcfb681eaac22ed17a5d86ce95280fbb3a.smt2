
(declare-fun s () String)

(assert (and (and (and (and (and (not (not (not (= (ite (= (str.at s 3) "+") 1 0) 0)))) (not (not (= (ite (= (str.at s 2) "+") 1 0) 0)))) (not (not (= (ite (= (str.at s 1) "+") 1 0) 0)))) (not (not (= (ite (= (str.at s 0) "+") 1 0) 0)))) (not (not (= (ite (<= (- (str.len s) 1) 0) 1 0) 0)))) (not (not (= (ite (= (str.len s) 0) 1 0) 0)))))

(check-sat)

;(get-value (s))





