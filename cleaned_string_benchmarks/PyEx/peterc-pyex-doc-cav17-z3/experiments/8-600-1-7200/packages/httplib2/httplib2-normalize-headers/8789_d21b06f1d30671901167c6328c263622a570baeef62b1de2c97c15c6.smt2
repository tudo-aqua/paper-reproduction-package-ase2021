(declare-fun key1 () String)
(declare-fun key2 () String)

(assert (not (not (= (ite (= key1 key2) 1 0) 0))))

(check-sat)

;(get-value (key1))
;(get-value (key2))