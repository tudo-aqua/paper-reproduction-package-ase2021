(declare-fun g () String)
(declare-fun d () String)
(declare-fun c () String)
(declare-fun e () String)
(declare-fun f () String)
(assert (= (str.++ "d" (str.++ e "b")) (str.++ d (str.++ c "a"))))
(assert (= (str.++ "a" (str.++ "b" "a")) (str.++ "d" (str.++ e "g"))))
(assert (= (str.++ f (str.++ "f" "g")) (str.++ "c" (str.++ "h" g))))
(check-sat)
(get-model)