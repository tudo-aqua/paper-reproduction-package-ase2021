
(declare-fun s () String)

(assert (and (not (not (= (ite (>= (- (str.len s) 1) 0) 1 0) 0))) (not (= (ite (> (str.len s) 0) 1 0) 0))))

(check-sat)

;(get-value (s))





