
(declare-fun s () String)

(assert (and (and (not (not (not (= (ite (< (- (str.len s) 0) 0) 1 0) 0)))) (not (not (= (ite (= (str.at s 1) (str.at s 0)) 1 0) 0)))) (not (not (= (ite (<= (str.len s) 1) 1 0) 0)))))

(check-sat)

;(get-value (s))





