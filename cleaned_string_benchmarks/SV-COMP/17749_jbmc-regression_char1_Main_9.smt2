(declare-const _string0 String)
(assert (bvsge ((_ int2bv 32) (str.len _string0)) #x00000001))
(assert (bvslt #x00000000 ((_ int2bv 32) (str.len _string0))))
(assert (bvslt #x00000041 #x00000000))
(assert (and (and true (<= -8 (str.len _string0))) (<= (str.len _string0) 8)))
(check-sat)
