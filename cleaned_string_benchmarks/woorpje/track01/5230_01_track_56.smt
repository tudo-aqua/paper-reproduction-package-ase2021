(set-logic QF_S)
(declare-fun C () String)
(declare-fun F () String)
(assert (= (str.++  "bbbaaabbaaaaaaab" C "abbbabbaababbababaaabbbbbbbbaabbbbaabbabbaabbabaaabbbbbaababaaaba")  (str.++  "bbbaaabbaaaaaaabaabaabbaab" F "bbababaaabbbbbbbbaabbbbaabbabbaabbabaaabbbbbaababaaaba") ))
(check-sat)
(get-model)