(declare-const _string0 String)
(assert (not (>= 13 (str.len _string0))))
(assert (and (and true (<= -2 (str.len _string0))) (<= (str.len _string0) 2)))
(check-sat)
