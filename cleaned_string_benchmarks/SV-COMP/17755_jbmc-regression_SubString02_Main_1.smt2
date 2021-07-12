(declare-const _string0 String)
(assert (< 20 (str.len _string0)))
(assert (and (and true (<= -8 (str.len _string0))) (<= (str.len _string0) 8)))
(check-sat)
