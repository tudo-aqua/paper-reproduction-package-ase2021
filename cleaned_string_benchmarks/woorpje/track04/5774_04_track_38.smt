(set-logic QF_S)
(declare-fun I () String)
(declare-fun B () String)
(declare-fun G () String)
(declare-fun E () String)
(declare-fun D () String)
(assert (= (str.++  "abacccacabc" E "abbabacaccbabcbbccbaabbcbbbaccaaaaaccac")  (str.++  "a" G "aacbcccab" B "ccbaabbcbbbaccaaaaaccac") ))
(assert (= (str.++  "b" I "cb" I "ccacbacbbcac" D "baccccbbbb" D "ab" I "cbacbbb" I "bba" I "cccacba" I "bcacc" I "bbbabc" I "cb" I "c" I "cccbab")  (str.++  "bacb" D "acbacbbcac" D "b" D "ccbbbb" D I "b" I "cb" I "cbbbabba" D "c" I "cba" I "bcacc" I "bbbabc" I "cbac" D "cb" I "b") ))
(assert (= (str.++  "bbbbcabbaa" I "bcbb" I "cabcc" I "acbca" I "cbbab" I "bcccbcabcabbcb" I I I "b" I "cbb" I "baaca" D "cbbbbc" I "c" I "abb" D)  (str.++  "bbbbcabb" I I "abcbb" I "cabcc" I "acbc" I "acbbab" I "bcccbc" I "bc" I "bbcba" I "ab" I "cbb" I "b" I "aca" I "cccbbbbc" I "caabb" D) ))
(assert (= (str.++  "c" I "b" I I "acc" I "abb" I "acbccba" I "bcbc" I "ccbcacba" I "cb" I I I I "b" I I "cbbcb" I "bc" I "b" I "c" I "bbbabaacbc" I "cbcccca" I "ba" I "a")  (str.++  "caba" I D I I "bbaacbccbaabcbc" D "bcacb" I "acb" I I "a" I "b" I "acbbcbabc" I "b" I "c" I "bbbabaacbcacbcccc" I I "b" I "a" I) ))
(assert (= (str.++  "a" D I "cca" I "bbccbabacbac" I "c" I I "bbc" D "bbbcbcbcbb" I "bccbacbcccc" I I "c" I "ca" I "acabcbccbcbbbbc" I "bcbb")  (str.++  "aaccacc" I I "bbccb" I "bacbacacaabbcaccbbbcbcbcbbabccbacbcccc" I "ac" I "c" I "a" I "cabcbccbcbbbbcabcbb") ))
(assert (= (str.++  "cbbbabcaabb" I "bbbaac" I "a" I "c" I "bbbcccbcacacba" I "b" I "cac" I "bcac" I "cb" I "cabcbcbccacbcbabb" I "bbbc" I "cabcc")  (str.++  "cbbbabca" I "bbabbb" I I "ca" I I "cabbbcccbc" I "cacba" I "b" I "c" I "cabc" I "c" I "cb" I "c" I "bcbcbcc" I "cbcb" I "bb" I "bbbc" I "cabcc") ))
(assert (= (str.++  I "cccbcabccccccc" I "bcbcbcbbcbcabbbbccbb" I "c" I "cbcaca" I "bb" I "cccbb" I I "bbcbcca" I "baac" I "aa" I "ccab" I "cbb")  (str.++  "acccbc" I "bccccccc" I "bcbcbcbbcbcabbbbccbb" I "c" I "cbcaca" I "bbacccbb" I I "bbcbcc" I I "baac" I "a" I "accab" I "cbb") ))
(assert (= (str.++  "cbcb" I "acc" I "cbbcbac" I "aacbc" I "bbaacbcbacc" I "c" I "cbbabcac" I "b" I "accc" I "acbcbc" I "c" I I "cbcbbbcbccbcccccb")  (str.++  "cbcb" I "acc" I "cbbcb" I "c" I "a" I "cbc" I "bb" I "acbcb" D "acacbbabcacaba" D "caacbcbc" I "c" I I "cbcbbbcbccbcccccb") ))
(assert (= (str.++  I "ccc" I "b" I "cc" I I "aabc" I "bcbbcbbc" I "bcbccbabbabb" I "bcbcc" I "cccaaca" I "bb" I "bb" I "ac" I "bccaaac" I I "b" I "ccbb" I "bbb")  (str.++  D "cab" D I I I I "bc" I "bcbbcbbcabcbccbabbabbabcbccacccaaca" I "bbabba" I "c" I "bcca" I I "c" I "ab" D "bbabbb") ))
(assert (= (str.++  "aaaccbcbacb" I "ccbcbb" I "cccabbcccbccbb" I "ca" I "bca" I "bcabcacccaabacbbaabccc" I "bcbcb" I "bb" I "cc" I "bcac")  (str.++  I I D "bcbacb" D "bcbb" D "cabbcccbccbbacaabc" I "abcabcacccaab" I "cbb" I I "bcccabcbcbabbaccabcac") ))
(assert (= (str.++  "cbb" I "bcbababcabc" D "abbabb" I "b" I "bbcbcb" I "b" I "bbcbccbaaccabcbcc" I "ba" I "bcb" I I I "bbcbcbcbbca" I I "bccc")  (str.++  "cbb" I "bcbab" I "bc" I "bc" D "abbabb" I "b" I "bbcbcbab" I "bbcbccba" D I "bcbcc" I "b" I "abcba" I "abbcbcbcbbc" I "a" I "bccc") ))
(assert (= (str.++  "bcbaabaabcc" I "bbbb" I "aab" I "ab" I "abbbbb" I "bb" I "cbbcacaabaabccbacbcbbbcbabb" I "cbcbbccacbcbcbbcac")  (str.++  "bcb" I I "baabcc" I "bbbbaaab" I I "b" I I "bbbbbabbacbbcac" I "abaabccb" I "cbcbbbcbabb" I "cbcbbcc" I "cbcbcbbc" I "c") ))
(assert (= (str.++  "bacb" I I "babcaa" I "bccccacb" I "acccacab" I "c" I "ab" I "cbcc" I "a" I "a" I "c" I "bc" I "cccc" I "cbb" I "bbcc" I "cbccbbccac" I "bbc" I "b")  (str.++  "b" I "cb" I I "babcaaabccccacb" I "acccac" I "bac" I I "bacbcca" I I "a" I "cabc" D "cc" I "cbb" I "bbcc" I "cbccbbccacabbcab") ))
(assert (= (str.++  "b" I "ababcacc" I "cccbaaba" I "bbbcbccbcabcabccbcbcab" I "cccccbababa" I "cccccacbbbabc" I "bbccc" I "bab" I "a")  (str.++  "baab" I "bcacc" D "cba" I "b" I "abbbcbccbcabcabccbcbc" I "b" D "cccb" I "b" I "ba" D "cccacbbb" I "bc" I "bbccc" I "bab" I I) ))
(assert (= (str.++  "b" I "cbbb" I "cbccbbbcc" I "cbcbbcaa" I I "c" I I "abaa" I "babbaacbbcbab" I "bbabcbcbbccbbbabbbcc" I "bcccbcc" I "aa")  (str.++  "b" I "cbbbacbccbbbccacbcbbc" I "aaac" I "a" I "b" I I "ab" I "bb" I "acbbcbababbabcbcbbccbbbabbbccabcccbcc" I "aa") ))
(assert (= (str.++  "bcbbcb" I "bccbabccb" I "bbcbbbbb" I "a" I I "bcab" I "bbacc" I "accbcab" I "aaba" I "bca" I "c" I "bbabcbab" I I "ccbcc" I "abb" I "c")  (str.++  "bcbbcb" I "bccbabccbabbcbbbbb" I I "a" I "bc" I "b" I "bb" D "a" D "bcaba" I "ab" I "abc" I I "cabb" I "bcbaba" D "bcc" I I "bbac") ))
(assert (= (str.++  "bbccc" I "bbc" I "cbbaccbc" I "acbba" I "c" I "cbbbbbcb" I "acaabcbbbb" I "aabbcbaacacbabababbbc" I "ccbc" I "ab" I "ccb")  (str.++  "bbccc" I "bbc" I "cbb" D "bcaacbb" I "ac" I "cbbbbbcbaaca" I "bcbbbbaa" I "bbcb" I I "c" I "cbab" I "b" I "bbbcaccbc" I I "b" D "b") ))
(assert (= (str.++  "cccbaacccbc" I "bccb" I "bcb" I "bcb" D "ababccccbcccbbbc" I "baccccabcab" I "c" I "c" I "cbb" I "ccab" I "ccbbaacb" I "bc")  (str.++  "cccba" D "cbcabccbabcb" I "bcb" I "cc" I "b" I "bccccbcccbbbcabacccc" I "bc" I "bac" I "cacbbaccab" D "bbaacbabc") ))
(assert (= (str.++  "a" I "bbbbbcccbcccabccb" I "ccba" I "cabcbcabcbbb" I I "ccbcccab" I "bbb" I "a" I "cab" I "cacbcbbc" I "cbccabb" I "cc" I "bc")  (str.++  "aabbbbbcccbccc" I "bccbaccb" I I "cabcbc" I "bcbbba" D "bcccab" I "bbb" I I "ac" I "b" I "cacbcbbcacbccabb" I "ccabc") ))
(assert (= (str.++  I "abc" I "c" I "cc" I I "bbcc" I "cbcc" I "ccccc" I "abcacbb" I "bcaca" I "babccc" I "aca" I "acbacbccaaccabcb" I "accccbaccbb")  (str.++  "aabc" I "c" D "a" I "bbcc" I "cbccaccccca" I "bcacbbabcac" I "ababccca" I "c" I I "acb" I "cbcc" I D I "bcb" I D "ccb" D "bb") ))
(assert (= (str.++  "cbcc" I "cb" I "b" I "b" I "bca" I "bccbccccccbbacab" I "b" I "bca" I I "acc" I I "b" I "bcccbcbc" I "bcb" I "ccacc" I "ababca" I "cbaaaa" I)  (str.++  "cbccacbabababc" I "abccbccccccbbacab" I "b" I "bcaa" I D "a" I "babcccbcbc" I "bcbacc" D "aab" I "bc" I I "cb" I "a" I "aa") ))
(assert (= (str.++  "acbccb" I "acbbba" I "ccbabcbccbccbacbccaccabbbbb" I "cacb" I "cacb" I I I "aabacbbbccab" I "bcba" I "bcaab" I I "c")  (str.++  I "cbccb" I I "cbbb" I D "babcbccbccb" I "cbccaccabbbbbacacb" I "c" I "cb" I I "a" I I "bacbbbccababcb" I I "bc" I I "baac") ))
(assert (= (str.++  "bcac" D "cbcbcc" I "bcbabcbabc" I "ccbbabb" I "bbbcab" I "cababca" I "bc" I "c" I "c" I "ac" I "ccbbbccccb" I "abcacbbc" I "cb")  (str.++  "bc" I "c" I "cccbcbcc" I "bcb" I "bcb" I "bc" D "bb" I "bb" I "bbbc" I "b" I "c" I "b" I "bc" I "abc" I "c" I "caacaccbbbccccb" I "abc" I "cbbc" I "cb") ))
(assert (= (str.++  "cbc" I "caacbabcbbabb" I "cacbb" I "cacbabb" I I "bc" D "bb" I "acbc" I "a" I "c" I "bbb" I "bacbcbccabccb" I I "babcbc" I "ccbb")  (str.++  "cbcac" I I "cbabcbbabb" I "c" I "cbbacacb" I "bb" I I "bc" I "ccbbaacbcaa" I "cabbb" I "b" I "cbcbcc" I "bccba" I "b" I "bcbc" D "bb") ))
(assert (= (str.++  "acbcbb" I "cba" I I I "aabb" I I "a" I I "ab" I "ac" I I "bcbacac" I "cbcc" I "ccbc" I "ccacb" I "ccbcccca" I "bc" I "bbb" I I I "b" I "ac" I "cccb")  (str.++  I "cbcbb" I "cbaaa" I I "abba" I "a" I "a" I "b" I I "ca" I "bcbac" I "cacbcc" D "bc" I "cc" I "cbaccbcccca" I "bcabbb" I "aab" I "acacccb") ))
(assert (= (str.++  I "c" D "bca" I "bcc" I I "bbcbbabbc" I "cb" I "ccbbaacba" D "bbbcbccaccbbbccbccbcccb" I "bccbaa" D "a" I "abcbbb")  (str.++  I "c" I "ccbc" I I "bcc" I "abbcbb" I "bbcacb" D "bb" I "acba" D "bbbcbccaccbbbccbccbcccbabccb" I "aacc" I "a" I "bcbbb") ))
(assert (= (str.++  "a" I "ccbb" I "cbb" I I "ba" I "bba" I "acababcbcab" I I "ccbbc" I "bcccbccbaaccaaa" I I "c" I "cbbbcbacbb" I I I "bcbbbbb" I "bc")  (str.++  I I "ccbb" I "cbb" I "abaabbaaacab" I "bcbcab" I "accbbc" I "bcccbccbaacc" I I "aa" I "c" I "cbbbcb" I "cbbaaabcbbbbb" I "bc") ))
(assert (= (str.++  I I I "cbb" I "cc" I "a" I "cbb" I "ccabacbcccbc" I "b" I "cbbc" I "c" I "c" I I I I "c" I "b" I "baabcbcab" I I "bcacabcc" I I "aab" D I "abcaa")  (str.++  "a" I I "cbb" I "cc" I "aacbb" D I "bacbcccbc" I "b" I "cbbcacac" I "a" I "ac" I "baba" I "bcbc" I "baabc" I "cabccaaaab" D I "abcaa") ))
(assert (= (str.++  D "aabb" I "aacbbccbacb" I "b" I "bcaacaaa" I I "bccb" I "aacaa" I I I "ac" I "cb" I "b" I I "b" I "b" I "acbbc" I I "c" I "bbbbb" I "bcac" I "c" I)  (str.++  D I I "bb" I I I "cbbccbacb" I "b" I "bcaac" I "aa" I I "bccb" I "aaca" I "aa" I "ac" I "cb" I "b" I I "b" I "b" I "acbbcaac" I "bbbbb" I "bc" I "c" I "ca") ))
(assert (= (str.++  "a" I "cbcb" I "accbb" I "bacca" I "ccbcbc" I "baabccbaac" I "ccacbcbccca" I "ca" I "cabcab" I "cbabbcccbcbabbcac" I "ccc")  (str.++  "a" I "cbcbaaccbb" I "b" I "cc" I I "ccbcbc" I "b" I "abccb" I I "c" D I "cbcbcccaac" I I "cabc" I "bacbabbcccbcbabbc" I "c" D "c") ))
(assert (= (str.++  "aacabbccb" I "b" I "bccacc" I I "ccccacbc" I "bbcbcb" I "cccbb" I "bcbccccabbccc" I "cb" I "bcabbcbac" I "cbcccbabc" I "c")  (str.++  I "ac" I "bbccb" I "babcc" D I "accccacbcabbcbcbacccbb" I "bcbccccabbcccacbabcabbcb" I "cacbcccb" I "bc" I "c") ))
(assert (= (str.++  "aa" I "abbbcbbcbcbc" I "c" I "aba" I I I "abb" I I I "bca" I "cbabac" I "b" I "c" I "b" I "ccbcbbb" I "b" D "aabbacaab" I "abb" I "b" I "cbbcc")  (str.++  "a" I I "abbbcbbcbcbc" I "ca" I "ba" I "aa" I "bb" I "a" I "bc" I "acb" I "b" I "c" I "bacab" D "bcbbb" I "b" D "aabbac" I I "b" I I "bb" I "b" I "cbbcc") ))
(assert (= (str.++  "cb" I I "bbbcbb" I "ccb" I "acabbcbcbcabccacbbb" I "b" I "b" I "bbbbbcbbbab" I "b" I I "ccc" I "bbb" I I "ccacbaa" I "cacbb" I "bc" I)  (str.++  "cb" I "abbbcbbaccba" I "c" I "bbcbcbcabcc" I "cbbb" I "b" I "b" I "bbbbbcbbb" I "b" I "b" I "acccabbbaacc" I "cba" I I "cacbbabca") ))
(assert (= (str.++  "bcccb" I "a" I "ab" I "ab" I "cbcc" I "bbccbab" I "bc" I "babc" I "bb" I "bbcccbbccaabbcbbbc" I "cb" I "cbccbcc" I "bbc" I "bcb" I "cccc")  (str.++  "bcccb" I I I I "b" I "abacbcc" I "bbccb" I "b" I "bc" I "b" I "bcabb" I "bbcccbbcca" I "bbcbbbc" I "cbacbccbcc" I "bbc" I "bcb" I "cccc") ))
(assert (= (str.++  "cccc" I "cacbbaaa" I "bbb" I "cba" D "ccb" I I "b" I "ba" I "c" I "bbbcabcb" I "bcbb" I "bbcbbba" I I I "ccbacc" I "cbbbc" I "ccb" I "bcb")  (str.++  "cccc" I "c" I "cbba" I "a" I "bbbacbaaccccb" I "ab" I "b" I "acabbbc" I "bcbabcbbabbcbbb" I "a" I "accb" D "acbbbc" D "b" I "bcb") ))
(assert (= (str.++  "bcc" I "cbcbbbacabbcabbc" I I "cbbbbcabcc" I "cbb" I I "bbabcbcbbbc" I "ba" I "a" I "bbcccccbacacbbbcc" I "aacbbcb")  (str.++  "bcc" I "cbcbbbacabbcabbc" I I "cbbbbcabccacbb" I I "bb" I "bcbcbbbc" I "ba" I "aabbcccccb" I "cacbbbcca" I "acbbcb") ))
(assert (= (str.++  "a" I "b" I "c" I "cb" I I I "a" I "b" I I I "ccbbcb" I "a" I "b" I "cbcbaac" D "cac" I "cbac" I "b" I I I "cbaac" I "acabcabcab" I "cbbc" I I "a" I "acab")  (str.++  "a" I "bac" I "cbaa" I "aaba" I "accbbcbaaab" I "cbcb" I I "caccc" I "c" I "cb" I "c" I "b" I I "acb" I "aca" I "cabc" I "bc" I "b" I "cbbc" I "aa" I I "c" I "b") ))
(assert (= (str.++  I "bcbacc" I "cbc" I "ccb" D I "bcacbaa" I "c" I I I "bbacb" I "bbcaa" I "cbbcbbabbacbcbccbacbac" I "a" I "babc" I "aababbb")  (str.++  I "bcb" D "acbc" I "ccbacc" I "bc" I "cbaaaca" I I "bb" I "cbabbca" I I "cbbcbb" I "bbacbcbccbacbac" I I "ababc" I I "ab" I "bbb") ))
(assert (= (str.++  "ca" I "cccbaacc" I "b" I "bac" I "abc" I "ba" I "b" I "ab" I "c" I "bbabacaa" I "bbcc" I "cbb" I "cbbbcb" I "bbcb" I I "babbcbb" I "bb" I I "bbc" I "c")  (str.++  "c" I I "cccba" D "abab" I "caabcab" I "aba" I "b" I "c" I "bbab" I "c" I I I "bbccacbb" I "cbbbcb" I "bbcbaab" I "bbcbb" I "bbaabbcac") ))
(assert (= (str.++  "cc" I "bbacbabbabcbc" I "bbabbbca" I I "cbbcbacb" I "bbc" I "bb" I "bb" I I "ccbc" I "c" I "bcbbbbab" I "bccb" I "abcc" I "cabbbc" I)  (str.++  "cc" I "bb" I "cbabbabcbcabb" I "bbbca" I I "cbbcb" I "cb" I "bbcabb" I "bba" D "bc" I "c" I "bcbbbb" I "b" I "bccba" I "bccacabbbca") ))
(assert (= (str.++  "bccbbbbcbbbbabbababbc" I I "cbbbbcb" I "caaba" I "caaccba" I "bcbbbcabccbbbabcc" I "cbbacbbbbab" D "ccb")  (str.++  "bccbbbbcbbbbabb" I "b" I "bbca" I "cbbbbcbacaab" I I "ca" D "baabcbbbc" I "bccbbbabcc" I "cbb" I "cbbbb" I "b" D "ccb") ))
(assert (= (str.++  "bc" D "bbcb" I "b" I "bcb" I "cab" I "bbbccacb" I "cbcbcbcbca" I I "bcbbcb" I I "bccccb" I "ba" I "bba" I "b" I I "acacb" I I I "b" I I I "bc")  (str.++  "bc" D "bbcbab" I "bcb" I "cab" I "bbbccacbacbcbcbcbc" I I I "bcbbcba" I "bccccbab" I "abba" I "ba" I "acacbaaab" I I I "bc") ))
(assert (= (str.++  "acbacaaccabb" I "bcbabbbbb" I "bcbcaabbbabc" I "cb" I "ccbcbcb" I "ccbcbcbacb" I D "c" D "a" I "ccbbcbaccbbbb")  (str.++  I "cb" I "caacc" I "bbabcb" I "bbbbbabcbc" I "abbbabcacb" D "bcbcb" D "bcbcbacb" I D "c" D I "accbbcb" I "ccbbbb") ))
(assert (= (str.++  "bcccac" I "cc" I "c" I "cc" I "bbba" I "abbbbcacb" I "bbbbab" I "cccbacacbbcc" I "ab" I "b" I "abcc" I "bbccacbbcc" I "c" I "c" I I I "cc" I)  (str.++  "bccc" I "caccac" I "ccabbb" I I I "bbbbcacbabbbb" I "b" I "cccb" I "c" I "cbbcca" I "baba" I "bccabbcc" I "cbbccacac" I I I "cc" I) ))
(assert (= (str.++  I I I "acabacbb" I "cb" I "b" I "ccbc" I "bbc" I I "cbabcccccbbcb" I "b" I I "cbabbccccacac" I "bbbcbcbcca" I "cbcc" I "ab" I "cbb")  (str.++  I I "a" I "cab" I "cbbacbab" I "ccbc" I "bbc" I I "cb" I "bcccccbbcbab" I I "cb" I "bbccccacac" I "bbbcbcbcc" I "acbcc" I "ab" I "cbb") ))
(assert (= (str.++  "bcbb" I I "bccccbcbbbcaa" I "aacbbbbb" I "bccca" I "c" I "bc" I "bb" D "bc" I "babcabbab" I "cbbcbc" I "b" I "bbacbc" I "babbca")  (str.++  "bcbb" I "abccccbcbbbcaa" I I "acbbbbb" I "bccc" I "acabc" I "bbaccbc" I "b" I "bcabbab" I "cbbcbc" I "babbacbc" I "babbca") ))
(assert (= (str.++  "ccbaacbcaccc" I "caac" I "bcac" I "ababcbbab" D "aabbcbccbb" I "cbabbb" I "bcccbcc" I "c" I "cbbbccccbb" I "bc" I "cca")  (str.++  "ccbaacbc" D "cac" I I "c" I "bc" I "c" I I "b" I "bcbb" I "b" I "cca" I "bbcbccbbacbabbbabcccbcc" I "cacbbbccccbb" I "bc" D I) ))
(assert (= (str.++  I "ccabc" I I "cabbca" I "bc" I "ccbbcabc" I "aacbbaab" I "ca" I "ccba" I I "cc" I "cba" I "c" D "cbcbc" D "bcbb" I "ba" I "ccbabccc")  (str.++  D I "bca" I "cabbc" I I "bcaccbbcabc" I I I "cbb" I I "b" I "c" I D "ba" I I "ccacba" I "cacccbcbc" D "bcbbaba" D "babccc") ))
(assert (= (str.++  I "a" I "bcbb" I "b" I "bcacabcaababcbbbcaacbacbbccccccaba" I I "b" I "bcabbbcbca" I "b" I "cc" I "cac" I I "c" I I "c" I "aacb" I "b")  (str.++  I I I "bcbb" I "b" I "bc" I "cabcaababcbbbca" I "cb" I "cbbccccccab" I I I "b" I "bc" I "bbbcbc" I I "b" I "ccac" I "caaca" I "c" I "a" I "cb" I "b") ))
(assert (= (str.++  "bc" I "cbbbcccbbccbccccaabb" I "cc" I "caabcacbcaabc" I "cccbbcbcbcbacbbcbbcbccbbaacbabca" I "bccc" I "c")  (str.++  "bc" I "cbbbcccbbccbccccaabb" I "ccac" I I "bc" I "cbca" I "bc" D "cbbcbcbcb" I "cbbcbbcbccbbaacbabcaabccc" I "c") ))
(assert (= (str.++  "cabcac" I "acaabbbbb" I "ab" I "c" I "cc" I "c" I "abcbbbab" I "b" I "bb" I "ccab" I "cb" I "bacbbbbccccc" I "cccaa" I "b" I "bcbbac" I "caa")  (str.++  "cabcacaacaabbbbbaabac" D "acaabcbbbabab" I "bb" D "abacbab" I "cbbbbccccc" I "ccca" I "ab" I "bcbbac" I "c" I "a") ))
(assert (= (str.++  "bcccbc" I "acbaacbccccc" I "ccb" I "caccbab" I "ccc" I I "acbbb" I "b" I "cb" I I "acbbbcbc" I "cacbab" I "cabcabacbbbbbab")  (str.++  "bcccbc" I I "cb" I "acbccccc" D "bac" I "ccb" I "b" D "c" I "aacbbb" I "bacbaaacbbbcbc" I "c" I "cbab" I "cabc" I "b" I "cbbbbbab") ))
(assert (= (str.++  I "bcaac" I I "ca" I "bcccc" I "c" I "bcb" I "b" I D "bca" I "bbbbbb" I "ccccb" I "b" I "ab" D "cb" D "ccacbb" I "bb" I "bbcaacbcbcc" I "c")  (str.++  I "bca" I "ca" I "ca" I "bccccacabcb" I "ba" D "bc" I "abbbbbbaccccb" I "ba" I "b" I "cccb" D "ccacbb" I "bb" I "bbcaacbcbcc" I "c") ))
(assert (= (str.++  "bacb" I "cabcbba" D I "ab" I "bbbc" I "b" I "ca" I "bac" I "a" I "abcb" I "bcbccbbcbccbcca" I I "baccbcc" I "cab" I "bbcbbbbc" I "ca")  (str.++  "bacb" I "c" I "bcbb" I D I "ababbbc" I "bac" I I "b" I "caaaabcb" I "bcbccbbcbccbcca" I I "b" I "ccbcc" I "c" I "b" I "bbcbbbbcac" I) ))
(assert (= (str.++  "bacbabaa" I "ba" I "abbcbabaabcbabbcbcbccbabcc" I "cb" I "cbccb" I "abc" I "c" I "bcbbbbc" I "bcbcb" I "b" I "bcbcbacc" I "a")  (str.++  "b" I "cb" I "b" I I "ab" I I "abbcbabaabcbabbcbcbccbabccacbacbccbaabc" I "cabcbbbbcabcbcb" I "babcbcb" D "aa") ))
(assert (= (str.++  "abacbcabcb" I "ccabbaabc" I "abbccca" I "c" I I "babbbcb" I I "bcaccabcb" I "bbcbcb" I I "ccc" I I "bb" I I I "accccc" I "ccbb")  (str.++  "abacbcabcbacc" I "bba" I "bc" I I "bbcccaacaababbbcbaabc" D I "bcb" I "bbcbcba" I "ccc" I "abbaa" I "accccc" D "bb") ))
(assert (= (str.++  I "baabbc" I "aa" I "a" I "ccccb" I "abcab" I "bbca" I "ac" I "bcc" I "cccbbcacaca" I "babacbbccccbcccbcbcacbbcbacbbb" I)  (str.++  I "baabbc" I I "aa" I "accccbaabc" I "b" I "bbca" I I "c" I "bcc" D "cbbcacaca" I "b" I "b" I "cbbccccbcccbcbcacbbcb" I "cbbb" I) ))
(assert (= (str.++  "bbcc" I "bbbac" I "b" I "aabb" I "bbbcbccba" I "acbabbcbcbcbcbbb" I "b" I "accc" I "cccabbb" I I "b" I I "bab" I I "bacbcbbabba")  (str.++  "bbcc" I "bbb" I "c" I "b" I "aabbabbbcbccb" I I I "cbabbcbcbcbcbbb" I "ba" I "ccc" I "ccc" I "bbb" I "ab" I I "babaab" I "cbcbb" I "bba") ))
(assert (= (str.++  "abbcbbc" I "cbbbbbcbcb" I "b" I "cacb" I "a" I "c" I "cc" I "bbca" I "cab" I "abbbc" I "b" I "acbc" I "ccbcbc" I "bb" I "cbc" I "bcb" I "cb" I "cbca")  (str.++  I "bbcbbc" I "cbbbbbcbcbabacacba" I "acacc" I "bbca" I "c" I "baabbbc" I "b" I "acbc" D "bcbc" I "bbacbcabcbacb" I "cbca") ))
(assert (= (str.++  "cabba" I "ac" I "b" I I "cbaaac" I "bbcacabbcb" I "abaabbabccbacc" I "bac" I "caabc" D "cbabacbbcaaccbbbccabbbb")  (str.++  "c" I "bba" I "ac" I "b" I I "cbaa" I "c" I "bbcac" I "bbcb" I "ab" I I "bbabccb" I "cc" I "b" I "c" I "c" I "abc" D "cb" I "b" I "cbbc" I I "ccbbbccabbbb") ))
(assert (= (str.++  "ccbabcbcbababb" I I I "b" I "ab" I "c" I "ca" I "ccaacbbbb" I "aaabcabcbcbcbacacc" I "aabcbbbaabb" I "baa" I "bcbcabcc")  (str.++  "ccbabcbcb" I "b" I "bb" I I I "b" I "ab" I "cacaaccaacbbbb" I "aa" I "bcabcbcbcbac" I "ccaa" I "bcbbb" I I "bb" I "b" I I I "bcbc" I "bcc") ))
(assert (= (str.++  "bacb" I I "b" I "cbcacbabac" I "aacaabacbbb" I "babcaaabbaabaaa" I "cccbcbcc" I D "cba" I "aababb" I "bbbcbcc" I "a" I)  (str.++  "bacba" I "b" I "cbc" I "cb" I "bac" I "aacaab" I "cbbb" I "babcaaabb" I I "ba" I I D "cbcbcca" D "cbaaaababbabbbcbccaa" I) ))
(assert (= (str.++  "bccbc" I I "cccb" D "cabacbb" I "cbca" I "ca" I I "cccbc" I "bbbbccccabbbc" I "cbacb" I "bcabbabccccaba" I I I "cb" I "bc" I)  (str.++  "bccbc" I I "cccb" I "ccc" I "b" I "cbb" I "cbca" I "caa" D "cbcabbbbccccabbbcacbacbabc" I "bbabcccc" I "baaa" I "cb" I "bc" I) ))
(assert (= (str.++  "cbccbcabcbacbbcb" I "bca" I "a" I "bbcba" I I I "abbb" D "c" I "a" I "bacbbbca" D "bc" I I "abacab" I "bcbbb" I "bbccbbcb" I I)  (str.++  "cbccbc" I "bcbacbbcbabc" I "aaabbcb" I I "aaabbb" D "ca" I "ab" I "cbbbc" I I "ccbc" I "aabac" I "b" I "bcbbb" I "bbccbbcb" I "a") ))
(assert (= (str.++  "cbcbbcbcccbc" I "bbbcaacbccbbccbbcbaaabaa" I "cb" I "a" I "aacbbbcaabcbbc" I "b" D "bbabbccbba" I "cbccbbc")  (str.++  "cbcbbcbcccbcabbbc" I "acbccbbccbbcb" I "a" I "b" I "aacba" I "a" I I "cbbbca" I "bcbbcab" D "bb" I "bbccbb" I I "cbccbbc") ))
(assert (= (str.++  "b" I "cc" I "a" I "c" D "ccbaababcba" I I "bacaccbbc" I "cab" I "abca" I "bbcccbbb" I "bbc" I "aacaccb" I I "c" I "bcbcaac" I "bbca" I)  (str.++  "b" I "cc" I "aacaccccb" I "ababcba" I "abac" D "bbc" I "cab" I "abcaabbcccbbb" I "bbc" I "a" I "caccb" I "acabcbca" I "cabbc" I "a") ))
(assert (= (str.++  "aba" I "bcb" I "bcaaa" I "cb" I "cccbabbb" I "aaac" I "c" I "cbcabbccccc" I "bc" I "cbabbbcabccc" D "ccbccbbcccba" D "ab")  (str.++  I "b" I I "bcbabca" I I I "cb" I "cccb" I "bbba" I I "ac" I "c" I "cbcabbccccc" I "bcacb" I "bbbcabccc" I "ccccbccbbcccb" I D "ab") ))
(assert (= (str.++  I "aac" I "cbbbbbcbbbb" I "bbbccbbbbccac" D I "cbacbcaccc" I "c" I "cacbbcbabcac" I "acbbcabca" I "abacbbbbac")  (str.++  I "a" I "c" I "cbbbbbcbbbbabbbccbbbbccac" I "cc" I "cb" I "cbc" I "ccc" I "cacacbbcbabcaca" I "cbbcabc" I I "abacbbbbac") ))
(assert (= (str.++  "ccaccbbbbaaba" I "bb" I "abc" I "abc" I "bacbcbbbbccab" D "aaba" I "cab" I "cac" I "ccca" I "c" I "cabcbc" I "b" I "acccc" I "aab" I)  (str.++  "ccaccbbbb" I "ab" I I "bba" I "bcaabcabacbcbbbbcc" I "b" I "cca" I "ba" I "cab" I "c" I "cacccaacac" I "bcbc" I "ba" D "ccaaaba") ))
(assert (= (str.++  "aababcb" D "cacccbbacbcabcbcccbbbb" I "cbbccbb" I "bbcbb" I "bbbbcaccc" I "cbccc" I "b" I "baba" I I I "babcabbb")  (str.++  "a" I "babcb" D "c" I "cccbb" I "cbc" I "bcbcccbbbb" I "cbbccbbabbcbb" I "bbbbcacccacbccc" I "bab" I "b" I "aaababcabbb") ))
(assert (= (str.++  I "ccccc" I "bc" I "a" I "cbabca" I "cbbabc" I "cbcb" I "b" I "cba" I "cbcabbabc" I "ccbcacbbc" I I "acbcbba" I "bbcccbaaa" I "abc" I)  (str.++  "accccc" I "bc" I "aacb" I "bc" I "acbb" I "bc" I "cbcbab" I "cb" I "acbc" I "bbabc" I "ccbcacbbc" I "a" I "cbcbb" I "abbcccb" I I I I "abc" I) ))
(assert (= (str.++  "ccbccb" I "bcbbbaa" I "cacbcb" I "bcbcb" I I "ccbc" I I "cabbbbccacbb" I "cbcbcbcaaba" I "c" I D "b" I "bcc" I I "bbccac" I I)  (str.++  "ccbccbabcbbba" I "acacbcbabcbcbaaccbc" I I "cabbbbccacbb" I "cbcbcbc" I "aba" I "caaccb" I "bcc" I I "bbccacaa") ))
(assert (= (str.++  "b" I I "bbbbacbcaabbaabb" I "b" I "bbb" I "bacbacbbbcbbbc" I "bcbcbbbccbc" I "bbcbcabbbccabb" I "bbccaccabaac")  (str.++  "b" I I "bbbb" I "cbca" I "bb" I I "bbababbb" I "bacb" I "cbbbcbbbcabcbcbbbccbcabbcbc" I "bbbcc" I "bbabbcc" D "ab" I I "c") ))
(assert (= (str.++  "bccbbaaab" I I "bcbba" I I "bcccc" I "b" I I "a" I "bb" I "aabc" I "ccc" I I "bbc" I I I "caabc" D I "c" I "bccbc" I "bbbaaccacb" I "accb")  (str.++  "bccbbaaabaabcbb" I I I "bcccc" I "baa" I I "bb" I "a" I "bc" D "c" I I "bbca" I "acaabcaccacabccbcabbb" I D "acba" I "ccb") ))
(assert (= (str.++  "acaccccbbbcab" I "ca" I "a" D I "bbcbb" I "ac" I "baac" I "bbbcc" I "bc" I "a" I "babacccc" I "b" I I "cc" I I "bcb" I "bbcacbcabbcbc")  (str.++  I "caccccbbbcab" I "caa" I I "ccabbcbba" I "cabaac" I "bbbccabca" I "ababaccccab" I "acca" I "bcb" I "bbcacbcabbcbc") ))
(assert (= (str.++  "a" I I "bcbcbb" I "bcc" I I "cbb" I "cb" I "cbbcb" I "cc" I "cb" D "aaaabcccb" I "bbb" I "bbc" I "cacb" I "baabbacbbabcb" I "b" I I "bbab")  (str.++  "a" I "abcbcbb" I "bcc" I I "cbb" I "cb" I "cbbcb" I "ccacb" I "cc" I "a" I "abcccbabbb" I "bbc" I "c" I "cb" I "ba" I "bbacbbabcb" I "b" I I "bbab") ))
(assert (= (str.++  I "cacaa" I "a" D "cbbcccaabca" I "acacc" D "b" I I "abb" I "b" I "acbacbbcccbab" I "aab" I "cc" I I "bbbbc" I "cabcbb" I "bcaba")  (str.++  I "c" I "c" I I I I D "cbbccca" I "bc" I I I "c" D "accb" I I "abbab" I "acbacbbcccbabaaab" I "cc" I I "bbbbcac" I "bcbb" I "bc" I "b" I) ))
(assert (= (str.++  "ca" I "bacbba" I "ccbc" I "bc" I "a" I "acbb" I "acbcab" I I "bccca" I "cbbababaa" I I "bbbc" I I "cb" I "abc" I "b" I "bccbbccbacaaaa" I)  (str.++  "c" I I "bacbb" I "accbcabcaaaacbba" I "cbc" I "baabccc" I I "cbbababa" I "a" I "bbbc" I I "cba" I "bcababccbbccb" I "ca" I "a" I I) ))
(assert (= (str.++  "bbcaabacbb" I I "aacbacbbacbb" I "cacbcbbaabccbbcc" I "bbbcb" I "cccb" I "bc" I "ba" I "ac" I "bcbc" I I I I "b" I I "b" I "bbbcc")  (str.++  "bbc" I "ab" I "cbb" I "aaacb" I "cbbacbb" I "c" I "cbcbbaabccbbccabbbcb" D "cb" I "bcab" I I "acabcbcaa" I "aba" I "babbbcc") ))
(assert (= (str.++  I I "cbacbbcccbcbbbcb" I "a" I I "bacabccc" I "aac" I "cab" I "bcc" I "c" I "bb" I "ccb" I "b" I "cbbba" D "bcbbcacbabbbcbbbcb")  (str.++  I "acbacbbcccbcbbbcb" I I I "abac" I "bccc" I I I "cacab" I "bcc" I "c" I "bbaccb" I "b" I "cbbb" I I "ccbcbbcacb" I "bbbcbbbcb") ))
(assert (= (str.++  I I I "b" I "bbb" I I "b" I I "ac" I "babac" I "cc" I "bbac" I I "c" I "c" I "bcccbca" I "abbabbab" I "abc" I "c" I "cbbbca" I "bccb" I "abccba" I "cbb")  (str.++  "a" I "ababbb" I I "baa" I "cab" I "bac" I "ccabb" I "c" I I "cac" I "bcccbca" I I "bbabbaba" I "bcacacbbbca" I "bccb" I I "bccb" I I "cbb") ))
(assert (= (str.++  "bbbabaccbcbbabbbccbcbcbbababc" I "bcbbcbc" I "ac" I "b" I "b" I "a" D "acccccbabcb" I "cbbcacabbbbac" I I "cc" I "b")  (str.++  "bbb" I "baccbcbbabbbccbcbcbbab" I "bc" I "bcbbcbc" I I "cab" I "b" I I "acc" D "cccbabcbacbbc" I "c" I "bbbbaca" I "cc" I "b") ))
(assert (= (str.++  "bcbcabb" I I "ccbcbbbabcccbcbbcbbb" I "ccacabcccbb" I "bbbc" I "bcccbcaac" I "ccbacbbacbcbbab" I "caccacc")  (str.++  "bcbcabb" I D "bcbbbabcccbcbbcbbb" I "cc" I "c" I "bcccbbabbbcabcccbc" I "acaccbacbb" I "cbcbb" I "b" I "c" I "cc" I "cc") ))
(assert (= (str.++  "bb" I I I "ccbccccaac" I "bbbcaca" I "cabacbcccbacabbb" I "c" I I "cbbbbbacab" I I "bcbc" I "c" I "c" I I I "b" I "b" I "b" I "abbcbb" I)  (str.++  "bb" I I I "ccbcccca" I "c" I "bbbc" I "c" I I "cab" I "cbcccb" I "cabbbaca" I "cbbbbbacab" I I "bcbc" I "c" I "c" I "aababab" I I "bbcbb" I) ))
(assert (= (str.++  "cccbbaaacbaaccccccbcbac" I "ccbabab" I "bbaab" I "bbb" I "aacbbbcbcbbcbbbc" I "abacbba" I "bccabcbcb" I "ba" I)  (str.++  "cccbb" I I "acba" D "ccccbcb" I "c" D "b" I "b" I "babb" I I "b" I "bbb" I I I "cbbbcbcbbcbbbc" I "abacbb" I I "bccabcbcbab" I I) ))
(assert (= (str.++  "bc" I "b" D "b" I I I "a" I "bcccb" I "a" I "cba" I "bcbbcbbbcc" D "aac" I "c" I "bb" I "bcbc" I "ccbc" I "bcaaccc" I "ccb" I "aa" I "ccbc" I I "ca")  (str.++  "bc" I "baccb" I I "aa" I "bcccbaaacba" I "bcbbcbbbcc" I "cca" I "c" I "cabbabcbc" D "bc" I "bca" D "c" D "b" I I "a" D "bcaac" I) ))
(assert (= (str.++  "ccbbcbcacbcbbabcbabbb" I "bb" I "cbc" I "cc" I "cbbb" I "bcbaccabb" I "bbcbcccccc" I I I I "cacb" I "bcbb" I "cb" D I I I "a")  (str.++  "ccbbcbc" I "cbcbb" I "bcb" I "bbbabb" I "cbc" D "acbbbabcb" I "ccabbabbcbcccccc" I I "a" I "cacb" I "bcbb" I "cb" I "cca" I "a" I) ))
(assert (= (str.++  "bbb" I "ba" I "cb" I "aabbab" I "cbbcaba" I "c" I "bbcaa" I "bbb" I "cc" I "bbccaa" I "bb" I I I "c" I "ccbc" I "bbc" I "bccbbba" I "cca" I "cbcac")  (str.++  "bbb" I "b" I "acba" I I "bbab" I "cbbcabaacabbca" I "abbb" D I "bbcc" I "aabbaa" I "caccbcabbcabccbbb" I D "aacbcac") ))
(assert (= (str.++  I "aacab" I "aabccbcba" I I "cbbcacbacbbccacaabccbc" I I I "ccbcccbcc" I "acbc" I "c" I "caa" I "cbcccb" I "caabbc" I "bc")  (str.++  I I I "c" I "b" I I "abccbcba" I I "cbbc" I "cbacbbcc" I "caabccbca" I I "ccbcccbcca" I "cbcacacaa" I "cbcccbaca" I "bbc" I "bc") ))
(assert (= (str.++  "cbbcbc" I "ccccb" I "cbcc" I "b" I "cc" I "c" I "ccbcbbb" I "cb" D "c" I "bcabaccbbb" I "cbccccccc" I "bcbc" D "cccbacbabbac")  (str.++  "cbbcbc" D "ccbacbccab" I "cc" I "c" D "bcbbbacb" I "cccabc" I "b" D "bbbacbcccccccabcbc" D "cccbacbabb" I "c") ))
(assert (= (str.++  D "aabaacbb" I D I "babcbccbcbbbccb" I "cc" I "b" I "bbb" I "cc" I "caccc" I "aca" D I "cb" I "ccc" I "aabbc" I "baccbcccbb")  (str.++  D I "abaacbba" I "cc" I "babcbccbcbbbccb" I "cc" I "babbbacc" I "c" I "cccaacaacc" I "cb" D "c" I "a" I "bbc" I "baccbcccbb") ))
(assert (= (str.++  "bab" I "ca" I I "cbcccc" I "b" I I "b" I I "a" I "bac" I "babbbabb" D "bc" I "bbccabc" I "ccac" I "bcbbaa" I "ccbacbba" I "c" I "abb" I "abac")  (str.++  "bab" I "ca" I I "cbcccc" I "baabaaa" I "b" I "c" I "b" I "bbbabb" D "bc" I "bbcc" I "bcacc" I "cabcbb" I I D "bacbb" I "acaabba" I "bac") ))
(assert (= (str.++  I "abcca" I "bbcccac" I "ca" I "bccb" I "cbbbcaabbcb" I "bcbcb" I "cacaccba" I "bcbcbbccccacaabcacbb" I "ccbccbbcb")  (str.++  I "abccaabbccc" I "c" I "ca" I "bccb" I "cbbbc" I "abbcb" I "bcbcb" I "cacaccb" I I "bcbcbbcccc" I "c" I "abcacbbaccbccbbcb") ))
(assert (= (str.++  "cbcacbbcbbcb" D "acacbbccabbacbaacbcbbc" I I "bb" I "ccbbccbc" I "aa" I "bcca" I I I "c" I "c" I "bbc" I "bba" I "bbbbcbc")  (str.++  "cbc" I "cbbcbbcbacc" I "c" I "cbbccabb" I "cb" I "acbcbbcaabbaccbbccbca" I I "abcc" I "a" I "ac" I "cabbcabbaabbbbcbc") ))
(assert (= (str.++  I "ccbbbbabbbcbbacbccbccc" I "b" I I "cb" I "bbcbcccbcbbcc" I "ccb" I "ac" I "b" I "babbbca" I "accbcbbbbcba" I "aa" I "ccb")  (str.++  "accbbbb" I "bbbcbb" I "cbccbcccabaacb" I "bbcbcccbcbbcc" I "ccb" I "ac" I "bababbbcaa" D "bcbbbbcbaaa" I I "ccb") ))
(check-sat)
(get-model)
