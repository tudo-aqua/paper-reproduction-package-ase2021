(set-logic QF_S)
(declare-fun B () String)
(declare-fun D () String)
(declare-fun C () String)
(assert (= (str.++  "eaf" B "jgfaihdfcbgff" C "gebgjgfdebeajefbe")  (str.++  "eafbgieagfdcahedjjjdcjgfaihdfcbgffbafedhbebghehgfehibbjdejbdafiidcbbec" D "iahceaggigheiebjecfgebgjgfdebeajefbe") ))
(check-sat)
(get-model)
