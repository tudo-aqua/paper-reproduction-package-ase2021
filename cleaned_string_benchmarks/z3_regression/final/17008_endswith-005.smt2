(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const z String)
(declare-const b1 Bool)

(assert (= b1 (str.suffixof "nba" "nba") ) )



(check-sat)
(get-model)
