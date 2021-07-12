(declare-const _string0 String)
(assert (< 20 (str.len _string0)))
(assert (and (and true (<= -21 (str.len _string0))) (<= (str.len _string0) 21)))
(check-sat)
