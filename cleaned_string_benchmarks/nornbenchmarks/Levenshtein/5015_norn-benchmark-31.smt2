(set-logic QF_S)

(declare-fun var_0 () String)
(declare-fun var_1 () String)
(declare-fun var_2 () String)
(declare-fun var_3 () String)
(declare-fun var_4 () String)
(declare-fun var_5 () String)
(declare-fun var_6 () String)
(declare-fun var_7 () String)
(declare-fun var_8 () String)
(declare-fun var_9 () String)
(declare-fun var_10 () String)
(declare-fun var_11 () String)
(declare-fun var_12 () String)

(assert (and (and (and (and (and (<= (+ (str.len var_2) (- 1) ) 0 ) (<= 0  (+ (str.len var_2) (- 1) ))) (and (<= (str.len var_3) 0 ) (<= 0  (str.len var_3)))) (and (<= (+ (+ (str.len var_4) (* (- 1)  (str.len var_1))) 1 ) 0 ) (<= 0  (+ (+ (str.len var_4) (* (- 1)  (str.len var_1))) 1 )))) (and (<= (+ (str.len var_0) (- 1) ) 0 ) (<= 0  (+ (str.len var_0) (- 1) )))) (<= 0  (+ (str.len var_1) (- 1) ))))
(check-sat)
