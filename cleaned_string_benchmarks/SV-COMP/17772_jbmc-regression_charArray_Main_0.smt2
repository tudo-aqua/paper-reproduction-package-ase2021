(declare-const _string0 String)
(assert (= ((_ int2bv 32) (str.len _string0)) #x00000005))
(assert (and (and true (<= -2 (str.len _string0))) (<= (str.len _string0) 2)))
(check-sat)