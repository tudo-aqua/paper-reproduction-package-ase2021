(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const vi1 Int)


(assert (= x "aaaaefg" ) )
(assert (= vi1 (str.indexof x "efg") ) )


(check-sat)
(get-model)
