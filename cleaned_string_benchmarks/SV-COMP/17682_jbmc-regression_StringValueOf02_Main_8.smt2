(declare-const _string0 String)
(assert (bvslt #x00000000 ((_ int2bv 32) (str.len _string0))))
(assert (bvslt #x00000001 ((_ int2bv 32) (str.len _string0))))
(assert (bvslt #x00000002 ((_ int2bv 32) (str.len _string0))))
(assert (bvslt #x00000003 ((_ int2bv 32) (str.len _string0))))
(assert (bvslt #x00000004 ((_ int2bv 32) (str.len _string0))))
(assert (bvslt #x00000005 ((_ int2bv 32) (str.len _string0))))
(assert (and (and true (<= -2 (str.len _string0))) (<= (str.len _string0) 2)))
(check-sat)
