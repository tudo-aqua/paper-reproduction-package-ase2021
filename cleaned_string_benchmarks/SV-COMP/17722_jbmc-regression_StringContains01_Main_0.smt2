(declare-const _string0 String)
(declare-const _string1 String)
(assert (not (str.contains _string0 _string1)))
(assert true)
(check-sat)