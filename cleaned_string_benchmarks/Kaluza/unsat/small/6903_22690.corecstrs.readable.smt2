(declare-fun T1_20 () String)
(declare-fun T1_9 () String)
(declare-fun T2_20 () String)
(declare-fun T2_9 () String)
(declare-fun T_1 () String)
(declare-fun T_2 () String)
(declare-fun T_3 () String)
(declare-fun T_4 () String)
(declare-fun T_5 () String)
(declare-fun T_6 () String)
(declare-fun T_7 () String)
(declare-fun T_9 () String)
(declare-fun T_a () String)
(declare-fun var_0xINPUT_13340 () String)
(assert (= T_1 (str.++ T1_9 T2_9)))
(assert (= T2_9 var_0xINPUT_13340))
(assert (= T1_9 "/search.jsp"))
(assert (= T_2 (str.++ "&utmn=1204363266&utmcs=UTF-8&utmsr=1680x976&utmsc=24-bit&utmul=en-us&utmje=0&utmfl=-&utmdt=Ask%20A%20Word&utmhn=www.askaword.com&utmhid=301814887&utmr=0&utmp=" T_1)))
(assert (= T_3 (str.++ "http://www.google-analytics.com/__utm.gif?utmwv=1.3" T_2)))
(assert (= T_4 (str.++ T_3 "&utmac=")))
(assert (= T_5 (str.++ T_4 "UA-167675-3")))
(assert (= T_6 (str.++ T_5 "&utmcc=")))
(assert (= T_7 (str.++ T_6 "__utma%3D169413169.223469763.1266896092.1266896092.1266896092.1%3B%2B__utmz%3D169413169.1266896092.1.1.utmccn%3D(direct)%7Cutmcsr%3D(direct)%7Cutmcmd%3D(none)%3B%2B")))
(assert (= T_9 (str.++ T1_20 T2_20)))
(assert (= T2_20 var_0xINPUT_13340))
(assert (= T1_20 "/search.jsp"))
(assert (= T_a (str.++ "&utmn=1204363266&utmcs=UTF-8&utmsr=1680x976&utmsc=24-bit&utmul=en-us&utmje=0&utmfl=-&utmdt=Ask%20A%20Word&utmhn=www.askaword.com&utmhid=301814887&utmr=0&utmp=" T_9)))
(check-sat)
