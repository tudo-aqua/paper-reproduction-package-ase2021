
(declare-fun K () Int)

(assert (and (and (and (and (not (not (not (= (ite (< (+ (+ (+ (mod 7 K) K) K) K) 7) 1 0) 0)))) (not (= (ite (< (+ (+ (mod 7 K) K) K) 7) 1 0) 0))) (not (= (ite (< (+ (mod 7 K) K) 7) 1 0) 0))) (not (= (ite (< (mod 7 K) 7) 1 0) 0))) (not (not (= (ite (= (mod 7 K) 0) 1 0) 0)))))

(check-sat)

;(get-value (K))





