
(declare-fun s1 () String)
(declare-fun s2 () String)
(declare-fun s3 () String)

(assert (not (not (= (ite (not (= (+ (str.len s1) (str.len s2)) (str.len s3))) 1 0) 0))))

(check-sat)

;(get-value (s1))
;(get-value (s2))
;(get-value (s3))





