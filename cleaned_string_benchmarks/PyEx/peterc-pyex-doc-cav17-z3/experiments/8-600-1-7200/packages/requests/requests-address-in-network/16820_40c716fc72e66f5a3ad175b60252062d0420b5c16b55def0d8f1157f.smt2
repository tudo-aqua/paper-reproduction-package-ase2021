(declare-fun network () String)

(assert (and (and (and (and (and (and (and (not (not (not (= (ite (str.contains (str.substr network (+ (str.indexof network "/" 0) 1) (- (str.len network) (+ (str.indexof network "/" 0) 1))) "/") 1 0) 0)))) (not (not (= (ite (= (str.len (str.substr network (+ (str.indexof network "/" 0) 1) (- (str.len network) (+ (str.indexof network "/" 0) 1)))) 0) 1 0) 0)))) (not (= (ite (str.contains network "/") 1 0) 0))) (not (not (= (ite (= (str.len network) 0) 1 0) 0)))) (>= (+ (str.indexof network "/" 0) 1) 0)) (>= (- (str.len network) (+ (str.indexof network "/" 0) 1)) 0)) (>= (+ (str.indexof network "/" 0) 1) 0)) (>= (- (str.len network) (+ (str.indexof network "/" 0) 1)) 0)))

(check-sat)

;(get-value (network))