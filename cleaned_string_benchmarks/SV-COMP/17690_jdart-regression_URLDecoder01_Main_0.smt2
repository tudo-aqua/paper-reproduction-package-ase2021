(declare-const _string0 String)
(assert (not (str.prefixof "some" (str.++ "some-url+" _string0))))
(assert true)
(check-sat)
