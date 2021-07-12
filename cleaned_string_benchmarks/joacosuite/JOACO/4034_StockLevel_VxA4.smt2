(set-logic QF_S)
(set-option :produce-models true)

(declare-fun var209 () String)
(declare-fun var208 () String)
(declare-fun var191 () String)
(declare-fun var193 () String)
(declare-fun var194 () String)
(declare-fun var196 () String)
(declare-fun var197 () String)
(declare-fun var198 () String)
(declare-fun var200 () String)
(declare-fun var201 () String)
(declare-fun var202 () String)
(declare-fun var204 () String)
(declare-fun var206 () String)
(declare-fun sv1 () String)
(declare-fun sv2 () String)

(assert (= true (= sv1 sv2 ) ))
(assert (= true (str.in.re var209 (re.++ (re.++ (re.++  (re.++ (re.* re.allchar ) (re.++  (str.to.re "'") (re.++ (re.+  (str.to.re " ") ) (re.++  (re.union  (str.to.re "O")  (str.to.re "o")) (re.++  (re.union  (str.to.re "R")  (str.to.re "r")) (re.++ (re.+  (str.to.re " ") )  (str.to.re "'"))))))) (str.to.re sv1) ) (re.++  (re.++  (str.to.re "'") (re.++ (re.* re.allchar ) (re.++  (str.to.re "=") (re.++ (re.* re.allchar )  (str.to.re "'"))))) (str.to.re sv2) ) )  (re.++  (str.to.re "'") (re.++ (re.*  (str.to.re " ") )  (re.union  (re.++  (str.to.re "\x2d")  (str.to.re "\x2d"))  (str.to.re "\x23")))) ) ) ))
(assert (= true (= (str.++ var206 "SELECT d_next_o_id" ) var204 ) ))
(assert (= true (= var197 var209 ) ))
(assert (= true (= var201 var208 ) ))
(assert (= true (= var193 var191 ) ))
(assert (= true (= (str.++ var194 "'" ) var193 ) ))
(assert (= true (= (str.++ var196 var197 ) var194 ) ))
(assert (= true (= (str.++ var198 "' AND d_id = '" ) var196 ) ))
(assert (= true (= (str.++ var200 var201 ) var198 ) ))
(assert (= true (= (str.++ var202 "WHERE d_w_id = '" ) var200 ) ))
(assert (= true (= (str.++ var204 "FROM tpcc_district" ) var202 ) ))

(check-sat)
(get-model)