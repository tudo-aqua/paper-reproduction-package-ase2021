(declare-const _string0 String)
(assert (bvsge ((_ int2bv 32) (str.len _string0)) #x00000001))
(assert (bvslt #x00000000 ((_ int2bv 32) (str.len _string0))))
(assert (not (= (str.at _string0 (ite (bvslt #x00000000 #x00000000) (- (bv2nat #x00000000)) (bv2nat #x00000000))) (str.at _string0 (ite (bvslt #x00000000 #x00000000) (- (bv2nat #x00000000)) (bv2nat #x00000000))))))
(assert (and (and true (<= -13 (str.len _string0))) (<= (str.len _string0) 13)))
(check-sat)
