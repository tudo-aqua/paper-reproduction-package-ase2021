(set-logic QF_S)
(set-option :produce-models true)

(declare-fun var1 () String)
(declare-fun var2 () String)
(declare-fun var3 () String)
(declare-fun var5 () String)
(declare-fun var7 () String)
(declare-fun var9 () String)
(declare-fun var10 () String)
(declare-fun var11 () String)
(declare-fun var13 () String)
(declare-fun var15 () String)
(declare-fun var16 () String)
(declare-fun sv1 () String)
(declare-fun sv2 () String)

(assert (= true (= sv1 sv2 ) ))
(assert (= true (str.in.re var16 (re.++ (re.++ (re.++  (re.++ (re.* re.allchar ) (re.++  (str.to.re "'") (re.++ (re.+  (str.to.re " ") ) (re.++  (re.union  (str.to.re "O")  (str.to.re "o")) (re.++  (re.union  (str.to.re "R")  (str.to.re "r")) (re.++ (re.+  (str.to.re " ") )  (str.to.re "'"))))))) (str.to.re sv1) ) (re.++  (re.++  (str.to.re "'") (re.++ (re.* re.allchar ) (re.++  (str.to.re "=") (re.++ (re.* re.allchar )  (str.to.re "'"))))) (str.to.re sv2) ) )  (re.++  (str.to.re "'") (re.++ (re.*  (str.to.re " ") )  (re.union  (re.++  (str.to.re "\x2d")  (str.to.re "\x2d"))  (str.to.re "\x23")))) ) ) ))
(assert (= true (= var2 var1 ) ))
(assert (= true (= (str.++ var3 "order by i_pub_date desc, i_title asc" ) var2 ) ))
(assert (= true (= (str.++ var5 "and i_a_id = a_id" ) var3 ) ))
(assert (= true (= (str.++ var7 "', 'YYYY\x2dMM\x2dDD HH24:MI:SS'\x29" ) var5 ) ))
(assert (= true (= (str.++ var9 var10 ) var7 ) ))
(assert (= true (= (str.++ var11 "and i_pub_date \x3e to_timestamp\x28'" ) var9 ) ))
(assert (= true (= (str.++ var13 "'\x29" ) var11 ) ))
(assert (= true (= (str.++ var15 var16 ) var13 ) ))

(check-sat)
(get-model)