(declare-const _string0 String)
(assert (not (str.prefixof "some" (str.++ (str.++ "" _string0) "some-url"))))
(assert true)
(check-sat)
