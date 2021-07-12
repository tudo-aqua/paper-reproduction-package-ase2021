(set-logic QF_S)
(set-option :produce-models true)

(declare-fun var497 () String)
(declare-fun var498 () String)
(declare-fun var500 () String)
(declare-fun var502 () String)
(declare-fun var504 () Int)
(declare-fun var507 () String)
(declare-fun var506 () String)
(declare-fun var508 () String)
(declare-fun var483 () String)
(declare-fun var485 () String)
(declare-fun var486 () String)
(declare-fun var488 () String)
(declare-fun var489 () String)
(declare-fun var490 () String)
(declare-fun var492 () String)
(declare-fun var493 () String)
(declare-fun var494 () String)
(declare-fun var496 () String)
(declare-fun sv1 () String)
(declare-fun sv2 () String)

(assert (= true (= sv1 sv2 ) ))
(assert (= true (str.in.re var507 (re.++ (re.++ (re.++  (re.++ (re.* re.allchar ) (re.++  (str.to.re "'") (re.++ (re.+  (str.to.re " ") ) (re.++  (re.union  (str.to.re "O")  (str.to.re "o")) (re.++  (re.union  (str.to.re "R")  (str.to.re "r")) (re.++ (re.+  (str.to.re " ") )  (str.to.re "'"))))))) (str.to.re sv1) ) (re.++  (re.++  (str.to.re "'") (re.++ (re.* re.allchar ) (re.++  (str.to.re "=") (re.++ (re.* re.allchar )  (str.to.re "'"))))) (str.to.re sv2) ) )  (re.++  (str.to.re "'") (re.++ (re.*  (str.to.re " ") )  (re.union  (re.++  (str.to.re "\x2d")  (str.to.re "\x2d"))  (str.to.re "\x23")))) ) ) ))
(assert (= true (= (str.++ var496 var497 ) var494 ) ))
(assert (= true (= (str.++ var498 "WHERE c_last = '" ) var496 ) ))
(assert (= true (= (str.++ var500 "FROM tpcc_customer" ) var498 ) ))
(assert (= true (= (str.++ var502 "SELECT count\x28c_id\x29 AS namecnt" ) var500 ) ))
(assert (= true (not (= 0 var504 )) ))
(assert (= true (= var493 var507 ) ))
(assert (= true (= var489 var506 ) ))
(assert (= true (= var497 var508 ) ))
(assert (= true (= var485 var483 ) ))
(assert (= true (= (str.++ var486 "'" ) var485 ) ))
(assert (= true (= (str.++ var488 var489 ) var486 ) ))
(assert (= true (= (str.++ var490 "' AND c_w_id = '" ) var488 ) ))
(assert (= true (= (str.++ var492 var493 ) var490 ) ))
(assert (= true (= (str.++ var494 "' AND c_d_id = '" ) var492 ) ))

(check-sat)
(get-model)