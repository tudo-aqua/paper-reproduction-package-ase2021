(declare-fun value2 () String)
(declare-fun key2 () String)

(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not (not (= (ite (= (str.len (str.substr value2 0 (- (str.indexof value2 "," 0) 0))) 0) 1 0) 0))) (not (= (ite (= (str.indexof (str.substr value2 0 (- (str.indexof value2 "," 0) 0)) "=" 0) (- 1)) 1 0) 0))) (not (not (= (ite (not (= (str.indexof (str.substr value2 0 (- (str.indexof value2 "," 0) 0)) "=" 0) (- 1))) 1 0) 0)))) (not (= (ite (= (str.len (str.substr value2 (+ (str.indexof value2 "," 0) 1) (- (str.len value2) (+ (str.indexof value2 "," 0) 1)))) 0) 1 0) 0))) (not (= (ite (str.contains value2 ",") 1 0) 0))) (not (not (= (ite (= (str.len value2) 0) 1 0) 0)))) (not (= (ite (= key2 "cache-control") 1 0) 0))) (not (= (ite (= key2 "cache-control") 1 0) 0))) (>= 0 0)) (>= (- (str.indexof value2 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value2 "," 0) 0) 0)) (>= 0 0)) (>= (- (str.indexof value2 "," 0) 0) 0)) (>= (+ (str.indexof value2 "," 0) 1) 0)) (>= (- (str.len value2) (+ (str.indexof value2 "," 0) 1)) 0)))

(check-sat)

;(get-value (value2))
;(get-value (key2))