(set-option :produce-models true)
(declare-fun var1679 () Int)
(declare-fun var1680 () Int)
(declare-fun var1681 () Int)
(declare-fun var1684 () String)
(declare-fun var1685 () Int)
(declare-fun var1689 () String)
(declare-fun var1690 () String)
(declare-fun var1691 () String)
(declare-fun var1692 () String)
(declare-fun var1693 () String)
(declare-fun var1695 () String)
(declare-fun var1696 () String)
(declare-fun var1697 () String)
(declare-fun sv1 () String)
(declare-fun sv2 () String)
(declare-fun kv1 () String)
(declare-fun kv2 () String)
(assert (= sv1 sv2 ) )
(assert (= kv1 kv2 ) )
(assert (str.in.re var1684 (re.++ (re.++ (re.++  (re.++ (re.* re.allchar ) (re.++  (str.to.re "\x27") (re.++ (re.+  (str.to.re "\x20") ) (re.++  (re.union  (str.to.re "\x4f")  (str.to.re "\x6f")) (re.++  (re.union  (str.to.re "\x52")  (str.to.re "\x72")) (re.++ (re.+  (str.to.re "\x20") )  (str.to.re "\x27"))))))) (str.to.re sv1) ) (re.++  (re.++  (str.to.re "\x27") (re.++ (re.* re.allchar ) (re.++  (str.to.re "\x3d") (re.++ (re.* re.allchar )  (str.to.re "\x27"))))) (str.to.re sv2) ) )  (re.++  (str.to.re "\x27") (re.++ (re.*  (str.to.re "\x20") )  (re.union  (re.++  (str.to.re "\x5c\x2d")  (str.to.re "\x5c\x2d"))  (str.to.re "\x23")))) ) ) )
(assert (= (- 1) (str.to.int kv1)))
(assert (= (int.to.str (- 1)) kv1))
(assert (= (str.len kv2) (- (str.len var1684) 4)))
(check-sat)
(get-model)
