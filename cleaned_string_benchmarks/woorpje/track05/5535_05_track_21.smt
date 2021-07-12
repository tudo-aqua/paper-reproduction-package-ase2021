(set-logic QF_S)
(declare-fun B () String)
(declare-fun I () String)
(declare-fun F () String)
(declare-fun G () String)
(declare-fun A () String)
(declare-fun D () String)
(assert (= (str.++  "afccfcfcabcba" I F "afbecbecedcd")  (str.++  "af" D "a" A "cd") ))
(assert (= (str.++  "ceacab" I "ec" B "cf" F "eddedfeaebacbddc" I "ea")  (str.++  "ceaca" I I "e" G "eae" I "acbddcbea") ))
(assert (= (str.++  "fafefefacccedabeddfedc" I "af" I "bffafeaeeddded")  (str.++  "fafefefaccceda" I "eddfedcba" A "bffafeaeeddded") ))
(assert (= (str.++  "caece" I "baddeeadbfccf" I "efcceccafa" I "eedfaa" I "fe")  (str.++  "caece" I I "addeeadbfcc" A "efcceccafabeedfaabfe") ))
(assert (>=(* (str.len G) 20) 160))
(assert (<=(* (str.len D) 15) 285))
(assert (>=(* (str.len B) 1) 1))
(assert (<=(* (str.len B) 5) 100))
(check-sat)
(get-model)