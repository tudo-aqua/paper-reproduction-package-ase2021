(set-logic QF_S)
(declare-fun C () String)
(declare-fun G () String)
(assert (= (str.++  "aeceebcddfccabfeebbefda" C "befefecddecdefc")  (str.++  "aeceebcddfccabfeebbefdadeddfbeebcfbbafabdcdbfdbcbbed" G "ceeecefaeabdffbfbeafecfbbefefecddecdefc") ))
(check-sat)
(get-model)