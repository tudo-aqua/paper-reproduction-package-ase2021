(declare-const _string0 String)
(assert (not (>= 13 (str.len _string0))))
(assert (and (and true (<= -13 (str.len _string0))) (<= (str.len _string0) 13)))
(check-sat)
