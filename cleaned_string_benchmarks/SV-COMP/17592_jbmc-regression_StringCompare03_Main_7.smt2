(declare-const _string1 String)
(declare-const _string0 String)
(assert (and (not (< (str.len _string1) 5)) (not (< (str.len _string0) 5))))
(assert (= (str.substr _string0 0 5) (str.substr _string1 0 5)))
(assert (and (and (and (and true (<= -8 (str.len _string1))) (<= (str.len _string1) 8)) (<= -8 (str.len _string0))) (<= (str.len _string0) 8)))
(check-sat)
