
(declare-fun s () String)

(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not (not (not (= (ite (> (- (- (- (str.len s) 1) 3) 3) 0) 1 0) 0)))) (not (not (= (ite (> (- (- (- (str.len s) 1) 3) 2) 0) 1 0) 0)))) (not (not (= (ite (> (- (- (- (str.len s) 1) 3) 1) 0) 1 0) 0)))) (not (not (= (ite (> (- (- (- (str.len s) 1) 2) 3) 0) 1 0) 0)))) (not (not (= (ite (> (- (- (- (str.len s) 1) 2) 2) 0) 1 0) 0)))) (not (not (= (ite (> (- (- (- (str.len s) 1) 2) 1) 0) 1 0) 0)))) (not (not (= (ite (> (- (- (- (str.len s) 1) 1) 3) 0) 1 0) 0)))) (not (not (= (ite (> (- (- (- (str.len s) 1) 1) 2) 0) 1 0) 0)))) (not (= (ite (= (str.len (str.substr s 3 (- (str.len s) 3))) 1) 1 0) 0))) (not (= (ite (= (str.len (str.substr s 2 (- 3 2))) 1) 1 0) 0))) (not (= (ite (= (str.len (str.substr s 1 (- 2 1))) 1) 1 0) 0))) (not (= (ite (= (str.len (str.substr s 0 (- 1 0))) 1) 1 0) 0))) (not (= (ite (<= (- (- (- (str.len s) 1) 1) 1) 3) 1 0) 0))) (not (= (ite (> (- (- (- (str.len s) 1) 1) 1) 0) 1 0) 0))) (not (not (= (ite (> (str.len s) 12) 1 0) 0)))) (not (not (= (ite (= (str.len s) 0) 1 0) 0)))) (>= 3 0)) (>= (- (str.len s) 3) 0)) (>= 2 0)) (>= (- 3 2) 0)) (>= 1 0)) (>= (- 2 1) 0)) (>= 0 0)) (>= (- 1 0) 0)))

(check-sat)

;(get-value (s))





