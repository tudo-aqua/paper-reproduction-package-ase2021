(declare-const _string0 String)
(assert (bvsge ((_ int2bv 32) (str.len _string0)) #x00000001))
(assert (and (and true (<= -2 (str.len _string0))) (<= (str.len _string0) 2)))
(check-sat)
