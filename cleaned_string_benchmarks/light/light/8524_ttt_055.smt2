(declare-fun g () String)
(declare-fun d () String)
(declare-fun c () String)
(declare-fun b () String)
(declare-fun h () String)
(declare-fun f () String)
(assert (= (str.++ "b" (str.++ "d" f)) (str.++ c (str.++ h b))))
(assert (= (str.++ "c" (str.++ "f" "c")) (str.++ c (str.++ "a" "e"))))
(assert (= (str.++ "b" (str.++ "d" g)) (str.++ "f" (str.++ d "c"))))
(check-sat)
(get-model)