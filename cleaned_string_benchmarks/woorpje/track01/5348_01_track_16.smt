(set-logic QF_S)
(declare-fun B () String)
(declare-fun F () String)
(assert (= (str.++  "abba" F "bbaaabaaaaaba" B "abbbaaba" F F "bbbabbabaa" F "aaaa" F "aaaaabbabaaabab")  (str.++  "abbaababbaa" F "aaa" F "abb" F "babaaabaabaabbaababbbaaba" F F "bbbabbabaaabaaaaaabaaaaaabb" F "aabab") ))
(check-sat)
(get-model)