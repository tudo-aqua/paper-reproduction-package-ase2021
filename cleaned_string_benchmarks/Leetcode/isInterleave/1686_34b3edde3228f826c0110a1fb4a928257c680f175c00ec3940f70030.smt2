
(declare-fun s1 () String)
(declare-fun s2 () String)
(declare-fun s3 () String)

(assert (and (and (and (and (and (and (not (not (not (= (ite (= (str.len s1) (- 1)) 1 0) 0)))) (not (= (ite (= (str.at s2 0) (str.at s3 0)) 1 0) 0))) (not (= (ite (> (str.len s2) 0) 1 0) 0))) (not (not (= (ite (> (str.len s1) 0) 1 0) 0)))) (not (not (= (ite (= (str.len s2) 0) 1 0) 0)))) (not (= (ite (= (str.len s1) 0) 1 0) 0))) (not (not (= (ite (not (= (+ (str.len s1) (str.len s2)) (str.len s3))) 1 0) 0)))))

(check-sat)

;(get-value (s1))
;(get-value (s2))
;(get-value (s3))





