
(declare-fun s () String)

(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not (not (= (ite (= (str.len s) 1) 1 0) 0))) (not (not (= (ite (> (str.len s) 1) 1 0) 0)))) (not (not (= (ite (> (str.len s) 1) 1 0) 0)))) (not (not (= (ite (> (str.len s) 1) 1 0) 0)))) (not (= (ite (= (str.at s 0) "+") 1 0) 0))) (not (not (= (ite (= (str.len s) 0) 1 0) 0)))) (not (not (= (ite (= (str.at s (- (str.len s) 1)) "\f") 1 0) 0)))) (not (not (= (ite (= (str.at s (- (str.len s) 1)) "\v") 1 0) 0)))) (not (not (= (ite (= (str.at s (- (str.len s) 1)) "\r") 1 0) 0)))) (not (not (= (ite (= (str.at s (- (str.len s) 1)) "\n") 1 0) 0)))) (not (not (= (ite (= (str.at s (- (str.len s) 1)) "\t") 1 0) 0)))) (not (not (= (ite (= (str.at s (- (str.len s) 1)) " ") 1 0) 0)))) (not (not (= (ite (= (str.at s 0) "\f") 1 0) 0)))) (not (not (= (ite (= (str.at s 0) "\v") 1 0) 0)))) (not (not (= (ite (= (str.at s 0) "\r") 1 0) 0)))) (not (not (= (ite (= (str.at s 0) "\n") 1 0) 0)))) (not (not (= (ite (= (str.at s 0) "\t") 1 0) 0)))) (not (not (= (ite (= (str.at s 0) " ") 1 0) 0)))) (not (not (= (ite (= (str.len s) 0) 1 0) 0)))))

(check-sat)

;(get-value (s))





