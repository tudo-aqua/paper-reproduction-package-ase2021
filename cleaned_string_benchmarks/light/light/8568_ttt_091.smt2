(declare-fun g () String)
(declare-fun d () String)
(declare-fun b () String)
(declare-fun a () String)
(declare-fun h () String)
(declare-fun f () String)
(assert (= (str.++ g (str.++ a "a")) (str.++ "a" (str.++ "b" d))))
(assert (= (str.++ "a" (str.++ h "d")) (str.++ "h" (str.++ "b" b))))
(assert (= (str.++ d (str.++ "h" "f")) (str.++ "f" (str.++ f f))))
(check-sat)
(get-model)