(declare-const _string0 String)
(assert (and (< 1 (str.len _string0)) (< 0 (str.len _string0))))
(assert (and (and true (<= -2 (str.len _string0))) (<= (str.len _string0) 2)))
(check-sat)
