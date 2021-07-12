(set-logic QF_S)
(declare-fun H () String)
(declare-fun I () String)
(declare-fun B () String)
(declare-fun J () String)
(assert (= (str.++  "cfbfbbdaaabcabebe" J "eccacacfeaccfbbdeaaf")  (str.++  "cfbf" H H "daaabcabeb" I "accfb" H "deaaf") ))
(assert (= (str.++  "cafacccecae" H "dabdbdafbdadbecbeebdafdcecc" H)  (str.++  "cafacccecae" H "da" H "dbdaf" H "dad" H "ecbeebdafdcecc" H) ))
(assert (= (str.++  B "eafd" H "ebcfdafcebbfddaaefadfbb" H "ffceecba")  (str.++  "faeeafdbebcfdafce" H H "fddaaefadf" H H H "ffceec" H "a") ))
(assert (>=(* (str.len I) 16) 144))
(assert (<=(* (str.len I) 18) 1782))
(assert (>=(* (str.len J) 14) 28))
(assert (<=(* (str.len H) 15) 60))
(check-sat)
(get-model)
