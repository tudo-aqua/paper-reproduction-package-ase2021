(declare-const _string0 String)
(assert (= _string0 "case1"))
(assert (= ((_ int2bv 32) (str.len _string0)) #xffffffff))
(assert (and (and true (<= -2 (str.len _string0))) (<= (str.len _string0) 2)))
(check-sat)
