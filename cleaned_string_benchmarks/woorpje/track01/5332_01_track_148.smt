(set-logic QF_S)
(declare-fun I () String)
(declare-fun C () String)
(declare-fun F () String)
(assert (= (str.++  "ehca" C "jdb" I "cc")  (str.++  "ehcabg" F "efhgaejjgadebdgcdabjdbc" I I) ))
(check-sat)
(get-model)
