(declare-const _string0 String)
(assert (bvsge (bvsub ((_ int2bv 32) (str.len _string0)) #x00000001) #x00000000))
(assert (bvsle #x00000000 (bvsub ((_ int2bv 32) (str.len _string0)) #x00000001)))
(assert (not (bvslt (bvsub ((_ int2bv 32) (str.len _string0)) #x00000001) ((_ int2bv 32) (str.len _string0)))))
(assert (and (and true (<= -8 (str.len _string0))) (<= (str.len _string0) 8)))
(check-sat)
