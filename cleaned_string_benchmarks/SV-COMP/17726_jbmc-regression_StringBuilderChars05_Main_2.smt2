(declare-const _string0 String)
(assert (not (>= 0 (str.len _string0))))
(assert (= "H" (str.at _string0 (ite (bvslt #x00000000 #x00000000) (- (bv2nat #x00000000)) (bv2nat #x00000000)))))
(assert (not (>= 6 (str.len _string0))))
(assert (and (and true (<= -8 (str.len _string0))) (<= (str.len _string0) 8)))
(check-sat)
