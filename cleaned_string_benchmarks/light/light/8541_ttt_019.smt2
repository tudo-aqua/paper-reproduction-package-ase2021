(declare-fun g () String)
(declare-fun c () String)
(declare-fun a () String)
(declare-fun h () String)
(declare-fun f () String)
(assert (= (str.++ c (str.++ a f)) (str.++ f (str.++ g "h"))))
(assert (= (str.++ "a" (str.++ g "h")) (str.++ "a" (str.++ "e" "h"))))
(assert (= (str.++ h (str.++ "a" a)) (str.++ "d" (str.++ "f" "c"))))
(check-sat)
(get-model)