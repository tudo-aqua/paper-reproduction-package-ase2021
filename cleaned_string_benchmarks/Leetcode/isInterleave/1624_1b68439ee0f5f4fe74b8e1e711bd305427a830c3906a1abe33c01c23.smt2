
(declare-fun s2 () String)
(declare-fun s1 () String)
(declare-fun s3 () String)

(assert (not (not (= (ite (> (str.len s2) 0) 1 0) 0)))) 
(assert (not (not (= (ite (> (str.len s1) 0) 1 0) 0)))) 
(assert (not (not (= (ite (= (str.len s2) 0) 1 0) 0)))) 
(assert (not (= (ite (= (str.len s1) 0) 1 0) 0))) 
(assert (not (not (= (ite (not (= (+ (str.len s1) (str.len s2)) (str.len s3))) 1 0) 0))))

(check-sat)

;(get-value (s2))
;(get-value (s1))
;(get-value (s3))





