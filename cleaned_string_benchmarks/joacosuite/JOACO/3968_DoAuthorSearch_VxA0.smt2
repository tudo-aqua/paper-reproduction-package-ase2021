(set-logic QF_S)
(set-option :produce-models true)

(declare-fun var1 () String)
(declare-fun var3 () String)
(declare-fun var4 () String)
(declare-fun var6 () String)
(declare-fun var7 () String)
(declare-fun var9 () String)
(declare-fun sv1 () String)
(declare-fun sv2 () String)

(assert (= true (= sv1 sv2 ) ))
(assert (= true (str.in.re var9 (re.++ (re.++ (re.++  (re.++ (re.* re.allchar ) (re.++  (str.to.re "'") (re.++ (re.+  (str.to.re " ") ) (re.++  (re.union  (str.to.re "O")  (str.to.re "o")) (re.++  (re.union  (str.to.re "R")  (str.to.re "r")) (re.++ (re.+  (str.to.re " ") )  (str.to.re "'"))))))) (str.to.re sv1) ) (re.++  (re.++  (str.to.re "'") (re.++ (re.* re.allchar ) (re.++  (str.to.re "=") (re.++ (re.* re.allchar )  (str.to.re "'"))))) (str.to.re sv2) ) )  (re.++  (str.to.re "'") (re.++ (re.*  (str.to.re " ") )  (re.union  (re.++  (str.to.re "\x2d")  (str.to.re "\x2d"))  (str.to.re "\x23")))) ) ) ))
(assert (= true (= var3 var1 ) ))
(assert (= true (= (str.++ var4 "%' AND ROWNUM \x3c= 50 ORDER BY tpcw_item\x2ei_title" ) var3 ) ))
(assert (= true (= (str.++ var6 var7 ) var4 ) ))
(assert (= true (= "SELECT \x2a FROM tpcw_author, tpcw_item WHERE tpcw_item\x2ei_a_id = tpcw_author\x2ea_id AND tpcw_author\x2ea_lname LIKE '" var6 ) ))
(assert (= true (= var7 var9 ) ))

(check-sat)
(get-model)