(declare-const _string0 String)
(assert (bvsge ((_ int2bv 32) (str.len _string0)) #x00000001))
(assert (bvsle ((_ int2bv 32) (str.len _string0)) #x00000000))
(assert (and (and true (<= -600 (str.len _string0))) (<= (str.len _string0) 600)))
(check-sat)