(declare-fun key1 () String)
(declare-fun key2 () String)

(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not (not (not (= (ite (str.contains (str.++ (str.replace (str.substr key1 0 (- (+ (str.indexof key1 "B" 0) 1) 0)) "B" "b") (str.substr key1 (+ (str.indexof key1 "B" 0) 1) (- (str.len key1) (+ (str.indexof key1 "B" 0) 1)))) "D") 1 0) 0)))) (not (not (= (ite (str.contains (str.++ (str.replace (str.substr key1 0 (- (+ (str.indexof key1 "B" 0) 1) 0)) "B" "b") (str.substr key1 (+ (str.indexof key1 "B" 0) 1) (- (str.len key1) (+ (str.indexof key1 "B" 0) 1)))) "C") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr key1 (+ (str.indexof key1 "B" 0) 1) (- (str.len key1) (+ (str.indexof key1 "B" 0) 1))) "B") 1 0) 0)))) (not (= (ite (str.contains key1 "B") 1 0) 0))) (not (not (= (ite (str.contains key1 "A") 1 0) 0)))) (not (= (ite (= key1 key2) 1 0) 0))) (>= 0 0)) (>= (- (+ (str.indexof key1 "B" 0) 1) 0) 0)) (>= (+ (str.indexof key1 "B" 0) 1) 0)) (>= (- (str.len key1) (+ (str.indexof key1 "B" 0) 1)) 0)) (>= 0 0)) (>= (- (+ (str.indexof key1 "B" 0) 1) 0) 0)) (>= (+ (str.indexof key1 "B" 0) 1) 0)) (>= (- (str.len key1) (+ (str.indexof key1 "B" 0) 1)) 0)) (>= (+ (str.indexof key1 "B" 0) 1) 0)) (>= (- (str.len key1) (+ (str.indexof key1 "B" 0) 1)) 0)))

(check-sat)

;(get-value (key1))
;(get-value (key2))