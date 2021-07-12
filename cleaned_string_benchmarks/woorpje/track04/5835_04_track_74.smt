(set-logic QF_S)
(declare-fun B () String)
(declare-fun E () String)
(declare-fun A () String)
(declare-fun C () String)
(declare-fun D () String)
(assert (= (str.++  "babcfe" A "fbacccee")  (str.++  "babcfeae" C "fbacccee") ))
(assert (= (str.++  "cecabafcfb" E "bdbedbd")  (str.++  "cecabafcfbaefabdbedbd" "") ))
(assert (= (str.++  "aefabcbadbceccfbadfef" "")  (str.++  E "bcbadbceccfbadfef" "") ))
(assert (= (str.++  "daecdaa" E "aaecaafaeb")  (str.++  "daecdaa" E "aaecaafaeb") ))
(assert (= (str.++  "dccc" E "bcbfaccedafbe")  (str.++  "dcccaefabcbfaccedafbe" "") ))
(assert (= (str.++  "aacccadbacccaefabbeca" "")  (str.++  "aacccadbaccc" E "bbeca") ))
(assert (= (str.++  "bfaba" E "bcaabeedccaa")  (str.++  "bfaba" E "bcaabeedccaa") ))
(assert (= (str.++  "caedaefabeebcfffefdaf" "")  (str.++  "caed" E "beebcfffefdaf") ))
(assert (= (str.++  "cababbedaacfbfad" E "b")  (str.++  "cababbedaacfbfad" E "b") ))
(assert (= (str.++  "acdbafeeed" E "afafdfb")  (str.++  "acdbafeeed" E "afafdfb") ))
(assert (= (str.++  "ce" C "dcffacfefbcfef")  (str.++  "cefaeaddcffacfefbcfef" "") ))
(assert (= (str.++  "beaebdadfbccde" E "fad")  (str.++  "beaebdadfbccdeaefafad" "") ))
(assert (= (str.++  "befbbebfbfbdcfaefacae" "")  (str.++  "befbbebfbfbdcf" E "cae") ))
(assert (= (str.++  "bcecdafbbdabbbec" E "e")  (str.++  "bcecdafbbdabbbec" E "e") ))
(assert (= (str.++  "eadbbefa" A "bdcdddf")  (str.++  "eadbbef" C "df") ))
(assert (= (str.++  "ad" D B B "cfb" A)  (str.++  "adafee" B "cfbdfd" B "bfeecce") ))
(assert (= (str.++  "caeadcddeafdefa" B "fcb" B "a")  (str.++  "ca" B "adcddeafd" B "fa" B "fcbea") ))
(assert (= (str.++  "db" B "eef" B "ebbafbbaaccdaf")  (str.++  "db" B "e" B "feebbafbbaaccdaf") ))
(assert (= (str.++  "ade" B "fcffdfdffdbbaccff")  (str.++  "ad" B B "fcffdfdffdbbaccff") ))
(assert (= (str.++  "fc" B "cddba" B B "edccfcbbd" B "d")  (str.++  "fc" B "cddba" B "e" B "dccfcbbd" B "d") ))
(assert (= (str.++  "cfdcacbfcdbaf" B "bbfbccb")  (str.++  "cfdcacbfcdbafebbfbccb" "") ))
(assert (= (str.++  "ecfddadbcacd" B "dbdeabab")  (str.++  B "cfddadbcacdedbdeabab" "") ))
(assert (= (str.++  "abcfcba" B "bdcbdfccbebac")  (str.++  "abcfcbaebdcbdfccb" B "bac") ))
(assert (= (str.++  "cbdecabbbfba" B "ccdaacaa")  (str.++  "cbdecabbbfba" B "ccdaacaa") ))
(assert (= (str.++  "be" B "affcd" B B "fdbfdcd" B "cce")  (str.++  "b" B "eaffcd" B "efdbfdcd" B "cce") ))
(assert (= (str.++  "cccbadfebcdbdcbcfcaac" "")  (str.++  "cccbadf" B "bcdbdcbcfcaac") ))
(assert (= (str.++  "fddedbeecacceacbfccff" "")  (str.++  "fdd" B "dbeecacc" B "acbfccff") ))
(assert (= (str.++  "fbacccaedefadbcdaffbd" "")  (str.++  "fbaccca" B "d" B "fadbcdaffbd") ))
(assert (= (str.++  "cdfbdbbbdfceadbd" B "eccd")  (str.++  "cdfbdbbbdfceadbd" B "eccd") ))
(assert (= (str.++  "dafdf" B "bcc" B "eddbbfcbddb")  (str.++  "dafdfebcc" B "eddbbfcbddb") ))
(assert (= (str.++  "cecdcfacadaffcbfabaca" "")  (str.++  "c" B "cdcfacadaffcbfabaca") ))
(assert (= (str.++  B "dbfbd" B "ee" B "cbdcfdd" B "cec")  (str.++  B "dbfbde" B "e" B "cbdcfddec" B "c") ))
(assert (= (str.++  B "ab" B "beaaacaf" B "d" B "ebfddb")  (str.++  "eab" B "b" B "aaacaf" B "d" B B "bfddb") ))
(assert (= (str.++  B "aedeebcca" B "aaebabedcb")  (str.++  "eaed" B B "bccaeaaebabedcb") ))
(assert (= (str.++  "dbcbffbaaccdbd" B "bfbffe")  (str.++  "dbcbffbaaccdbdebfbff" B) ))
(assert (= (str.++  B "a" B "ddaffccbccdefbbccf")  (str.++  "ea" B "ddaffccbccd" B "fbbccf") ))
(assert (= (str.++  "fa" B "f" B "afcfc" B "fdb" B "defcb" B)  (str.++  "faefeafcfc" B "fdb" B "defcb" B) ))
(assert (= (str.++  "cffdbddadcc" B "fbfac" B B "bc")  (str.++  "cffdbddadcc" B "fbface" B "bc") ))
(assert (= (str.++  "ae" B "abcfa" B "d" B "fabcacbfde")  (str.++  "a" B "eabcfaedefabcacbfd" B) ))
(assert (= (str.++  "cbffbccaaa" B "acef" B "bff" B "b")  (str.++  "cbffbccaaaeac" B "febff" B "b") ))
(assert (= (str.++  "cfaa" B B "eed" B "ecd" B "ddcfc" B "e")  (str.++  "cfaa" B "ee" B "deecd" B "ddcfce" B) ))
(assert (= (str.++  "bbdddcbafbd" B "fadbdcfac")  (str.++  "bbdddcbafbdefadbdcfac" "") ))
(assert (= (str.++  "fccf" B "eaeafdfdb" B "af" B "bdf")  (str.++  "fccf" B B "a" B "afdfdb" B "af" B "bdf") ))
(assert (= (str.++  "bbb" B "bc" B "edabbdfaadacbc")  (str.++  "bbb" B "bc" B "edabbdfaadacbc") ))
(assert (= (str.++  "aafa" B "fcaca" B "dfacefbdcc")  (str.++  "aafaefcaca" B "dfacefbdcc") ))
(assert (= (str.++  "fbadabadbcadfa" B "cba" B "b" B)  (str.++  "fbadabadbcadfaecbaebe" "") ))
(assert (= (str.++  "dabc" B "dafbaebdbfdb" B "cfa")  (str.++  "dabcedafbaebdbfdbecfa" "") ))
(assert (= (str.++  B "fcfbbfbccfdfbffd" B "bce")  (str.++  B "fcfbbfbccfdfbffd" B "bc" B) ))
(assert (= (str.++  "eacfecba" B "dbdfa" B "fbcbe" B)  (str.++  B "acfecbaedbdfaefbcb" B B) ))
(assert (= (str.++  "dcbfadabbefbe" B "ceddbea")  (str.++  "dcbfadabb" B "fbe" B "c" B "ddb" B "a") ))
(assert (= (str.++  "fcdbcfffdf" B "bab" B "fadd" B "a")  (str.++  "fcdbcfffdfebab" B "fadd" B "a") ))
(assert (= (str.++  "bac" D "cbcbddcaf" B "ebedf")  (str.++  "bacaf" B "cbcbddcaf" B B "b" B "df") ))
(assert (= (str.++  "abcdcbfec" B "bf" B B "bccdbcc")  (str.++  "abcdcbf" B "c" B "bf" B B "bccdbcc") ))
(assert (= (str.++  "afbbabadb" B "bbdfcfb" B "df" B)  (str.++  "afbbabadb" B "bbdfcfbedfe") ))
(assert (= (str.++  "eddddabadffbfb" B "ffc" B "fb")  (str.++  B "ddddabadffbfbeffcefb" "") ))
(assert (= (str.++  "bddaecd" B "e" B "fadbbbeff" B "d")  (str.++  "bddaecde" B "efadbbb" B "ffed") ))
(assert (= (str.++  "dadcaddef" B "dfa" B "fccbabb")  (str.++  "dadcaddef" B "dfa" B "fccbabb") ))
(assert (= (str.++  "eefaafaeaeeffccdeaacf" "")  (str.++  B "efaafa" B "a" B "effccd" B "aacf") ))
(assert (= (str.++  "dedfd" B "aea" B "cfcafdfaa" B "a")  (str.++  "dedfd" B "aeaecfcafdfaa" B "a") ))
(assert (= (str.++  "dcdaddbefedcdaefbcabb" "")  (str.++  "dcdaddbef" B "dcdaefbcabb") ))
(assert (= (str.++  "dabcddefbaaaabddfdccb" "")  (str.++  "dabcdd" B "fbaaaabddfdccb") ))
(assert (= (str.++  "deafcbacdabcaebfdbbcd" "")  (str.++  "d" B "afcbacdabcaebfdbbcd") ))
(assert (= (str.++  "ffabdafaffadbdbd" B "eef" B)  (str.++  "ffabdafaffadbdbde" B "ef" B) ))
(assert (= (str.++  "dfccadcadaadabba" B "daac")  (str.++  "dfccadcadaadabbaedaac" "") ))
(assert (= (str.++  "dcecb" B "cddfacdcedddbc" B)  (str.++  "dcecb" B "cddfacdc" B "dddbc" B) ))
(assert (= (str.++  "cbeddc" B "fecfcdcabc" B "ccb")  (str.++  "cb" B "ddcef" B "cfcdcabceccb") ))
(assert (= (str.++  "cdfccabbeacead" B "fbe" B "ac")  (str.++  "cdfccabb" B "ac" B "adefbeeac") ))
(assert (= (str.++  "ffdcffcaeddf" B "eaeffafa")  (str.++  "ffdcffca" B "ddfeea" B "ffafa") ))
(assert (= (str.++  "ffdaaffccdbbddafad" B "cf")  (str.++  "ffdaaffccdbbddafadecf" "") ))
(assert (= (str.++  "fbfdfaddafcdfafccad" B B)  (str.++  "fbfdfaddafcdfafccade" B) ))
(assert (= (str.++  "dffffffdcccaccdffefcf" "")  (str.++  "dffffffdcccaccdff" B "fcf") ))
(assert (= (str.++  "fad" B "feacafa" B "cdbdc" B "daa")  (str.++  "fad" B "feacafaecdbdc" B "daa") ))
(assert (= (str.++  "edc" B B "eaebcc" B "febfdaa" B "e")  (str.++  B "dce" B "ea" B "bccef" B "bfdaae" B) ))
(assert (= (str.++  "eebccbccdddffd" B "affbff")  (str.++  B "ebccbccdddffdeaffbff" "") ))
(assert (= (str.++  "dcccaabc" B "deab" B "bdd" B "cbe")  (str.++  "dcccaabc" B "d" B "abebddecbe") ))
(assert (= (str.++  "fdefabccfafdddc" B "acdcc")  (str.++  "fdefabccfafdddceacdcc" "") ))
(assert (= (str.++  "bcfbbaffbd" B "b" B "dffaad" B "a")  (str.++  "bcfbbaffbdeb" B "dffaadea") ))
(assert (= (str.++  "b" B "edccadfdeccbade" B "acb")  (str.++  "b" B "edccadfd" B "ccbad" B B "acb") ))
(assert (= (str.++  "aca" B "cafbf" B "bbafffafcae")  (str.++  "acaecafbfebbafffafcae" "") ))
(assert (= (str.++  "efeacdfdafacd" B "fcbfbdb")  (str.++  "efeacdfdafacdefcbfbdb" "") ))
(assert (= (str.++  "db" B "dabccfdaddfdefcebf")  (str.++  "db" B "dabccfdaddfd" B "fcebf") ))
(assert (= (str.++  "abfcc" B "afdbaacfbddc" B "fd")  (str.++  "abfcc" B "afdbaacfbddcefd") ))
(assert (= (str.++  "cd" B "f" B "fcbeacd" B "aba" B "afef")  (str.++  "cd" B "fefcb" B "acd" B "aba" B "afef") ))
(assert (= (str.++  B "dedcf" B "cdbb" B "aaacadcdd")  (str.++  "ed" B "dcf" B "cdbbeaaacadcdd") ))
(assert (= (str.++  B "cb" D "edacffcddbbbfea")  (str.++  "ecbafeedacffcddbbbfea" "") ))
(assert (= (str.++  B "dcdcdf" B "fbce" B "fedccbcb")  (str.++  B "dcdcdf" B "fbc" B B "f" B "dccbcb") ))
(assert (= (str.++  B B "e" B "dd" B "bfacace" B "acbdac")  (str.++  B B "eedd" B "bfacac" B B "acbdac") ))
(assert (= (str.++  "abfcfbedbbacfcbaccead" "")  (str.++  "abfcfb" B "dbbacfcbaccead") ))
(assert (= (str.++  "bacb" B "dfcebbcdefbbf" B "cc")  (str.++  "bacb" B "dfc" B "bbcd" B "fbbf" B "cc") ))
(assert (= (str.++  "dbeefdbbdcbadfdfbea" B "e")  (str.++  "dbe" B "fdbbdcbadfdfbea" B "e") ))
(assert (= (str.++  "aabfcadbef" B "ffdededdba")  (str.++  "aabfcadb" B "f" B "ffdededdba") ))
(assert (= (str.++  "d" B "adbebdebfdcefcadcfe")  (str.++  "deadb" B "bdebfdc" B "fcadcfe") ))
(assert (= (str.++  "ecbbbd" B "ac" B B "bbddeac" B "bf")  (str.++  B "cbbbdeace" B "bbddeac" B "bf") ))
(assert (= (str.++  "e" B "adcad" B "d" B "bedfe" B B "edfc")  (str.++  "eeadcad" B "deb" B "df" B B "e" B "dfc") ))
(assert (= (str.++  "cdd" B "cbbbfdcdcadbcab" B "b")  (str.++  "cddecbbbfdcdcadbcab" B "b") ))
(assert (= (str.++  "ee" B B "d" B "bcdbcccef" B "a" B "aad")  (str.++  B B B "ed" B "bcdbcccef" B "a" B "aad") ))
(assert (= (str.++  "afafbfcbdcfeeaa" B "aafda")  (str.++  "afafbfcbdcf" B B "aaeaafda") ))
(assert (= (str.++  "cc" B "addfbdcfbfbadffccc")  (str.++  "cceaddfbdcfbfbadffccc" "") ))
(assert (= (str.++  "ddfcecdddaeacbecbfaae" "")  (str.++  "ddfcecddda" B "acb" B "cbfaa" B) ))
(assert (= (str.++  "faaddfbbdbafddcceaac" B)  (str.++  "faaddfbbdbafddcc" B "aace") ))
(assert (= (str.++  "caffdccbbcbdeacfaadda" "")  (str.++  "caffdccbbcbd" B "acfaadda") ))
(assert (= (str.++  "afcfb" B "afeebfeaddc" B "dfd")  (str.++  "afcfbeaf" B "ebfeaddcedfd") ))
(assert (= (str.++  "bbdca" B "fdfffcb" B B "fdffbd")  (str.++  "bbdcaefdfffcb" B B "fdffbd") ))
(assert (= (str.++  "fdecbcdfddcbea" B "fdffee")  (str.++  "fd" B "cbcdfddcbea" B "fdffee") ))
(assert (= (str.++  "df" B "dfbbdebdfaacaafcc" B)  (str.++  "df" B "dfbbd" B "bdfaacaafcce") ))
(assert (= (str.++  "bdadfcdbcfa" B "bfcfaaacf")  (str.++  "bdadfcdbcfaebfcfaaacf" "") ))
(assert (= (str.++  "dbdaaaceeeeadfdfd" B "afd")  (str.++  "dbdaaac" B B B "eadfdfdeafd") ))
(assert (= (str.++  "accc" B "daefffafcdccbaca")  (str.++  "acccedaefffafcdccbaca" "") ))
(assert (= (str.++  "b" B "d" B "ebfdedddbdacebcdd")  (str.++  "b" B "d" B "ebfd" B "dddbdac" B "bcdd") ))
(assert (= (str.++  B "bbdbfdaabbfab" B "c" B "abad")  (str.++  B "bbdbfdaabbfabec" B "abad") ))
(assert (= (str.++  "bbb" B "ab" B "adbfdfba" B "dade" B)  (str.++  "bbbeab" B "adbfdfbaedade" B) ))
(assert (= (str.++  "aa" B "ffbccddfbaaeceef" B "e")  (str.++  "aa" B "ffbccddfbaa" B "ce" B "fe" B) ))
(assert (= (str.++  "bcddcd" B "fcaf" B "ccadaebcb")  (str.++  "bcddcd" B "fcaf" B "ccadaebcb") ))
(assert (= (str.++  "ccbed" B "cdeaccbbfcd" B "fbd")  (str.++  "ccb" B "decdeaccbbfcd" B "fbd") ))
(assert (= (str.++  "accfd" B "adfcbdbffababaf")  (str.++  "accfd" B "adfcbdbffababaf") ))
(assert (= (str.++  "cbbdbcdec" B "bbfacccedce")  (str.++  "cbbdbcdec" B "bbfaccc" B "dc" B) ))
(assert (= (str.++  "cafb" B "adbb" B "cedecb" B "ffd" B)  (str.++  "cafb" B "adbb" B "cedecbeffd" B) ))
(assert (= (str.++  "dadfccabc" B "abb" B "bcdcacb")  (str.++  "dadfccabc" B "abbebcdcacb") ))
(assert (= (str.++  "ddaffafbdabff" B "fcefafe")  (str.++  "ddaffafbdabffefc" B "faf" B) ))
(assert (= (str.++  B "fafdcac" B "c" B "efcedcd" B "a" B)  (str.++  "efafdcac" B "ce" B "fcedcd" B "a" B) ))
(assert (= (str.++  B "abacaaccaabdcc" B "bcaab")  (str.++  B "abacaaccaabdcc" B "bcaab") ))
(check-sat)
(get-model)
