(set-logic QF_S)
(declare-fun B () String)
(declare-fun D () String)
(declare-fun F () String)
(assert (= (str.++  "aeeeeedba" D "eae" B "ddabcdcbbdbeddee")  (str.++  "aeeeee" F "bcdecbadcdbeaaddabcdcbbdbeddee") ))
(check-sat)
(get-model)
