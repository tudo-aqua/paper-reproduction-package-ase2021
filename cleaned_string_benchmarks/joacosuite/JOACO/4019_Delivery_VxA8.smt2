(set-logic QF_S)
(set-option :produce-models true)

(declare-fun var815 () String)
(declare-fun var817 () String)
(declare-fun var818 () String)
(declare-fun var819 () Int)
(declare-fun var820 () String)
(declare-fun var822 () String)
(declare-fun var823 () String)
(declare-fun var824 () String)
(declare-fun var826 () String)
(declare-fun var827 () Int)
(declare-fun var828 () String)
(declare-fun var830 () String)
(declare-fun var832 () Int)
(declare-fun var834 () Int)
(declare-fun var835 () Int)
(declare-fun var839 () Int)
(declare-fun var842 () String)
(declare-fun var843 () String)
(declare-fun var844 () String)
(declare-fun var846 () String)
(declare-fun var848 () String)
(declare-fun var849 () String)
(declare-fun var850 () String)
(declare-fun var851 () String)
(declare-fun var852 () String)
(declare-fun var854 () String)
(declare-fun var856 () String)
(declare-fun var859 () Int)
(declare-fun var858 () Int)
(declare-fun var863 () String)

(assert (= true (= var817 var815 ) ))
(assert (= true (= (str.++ var818 (int.to.str var819 ) ) var817 ) ))
(assert (= true (= (str.++ var820 "' AND no_o_id =" ) var818 ) ))
(assert (= true (= (str.++ var822 var823 ) var820 ) ))
(assert (= true (= (str.++ var824 "AND no_w_id = '" ) var822 ) ))
(assert (= true (= (str.++ var826 (int.to.str var827 ) ) var824 ) ))
(assert (= true (= (str.++ var828 "WHERE no_d_id =" ) var826 ) ))
(assert (= true (= (str.++ var830 "DELETE FROM tpcc_new_order" ) var828 ) ))
(assert (= true (not (= 0 var832 )) ))
(assert (= true (= (- var835 1 ) var834 ) ))
(assert (= true (= var827 var835 ) ))
(assert (= true (= (- 1) var819 ) ))
(assert (= true (= 0 var839 ) ))
(assert (= true (= var843 var842 ) ))
(assert (= true (= (str.++ var844 "\x29 WHERE rownum = 1" ) var843 ) ))
(assert (= true (= (str.++ var846 "' ORDER BY no_o_id ASC" ) var844 ) ))
(assert (= true (= (str.++ var848 var823 ) var846 ) ))
(assert (= true (= (str.++ var849 "AND no_w_id = '" ) var848 ) ))
(assert (= true (= (str.++ var850 (int.to.str var827 ) ) var849 ) ))
(assert (= true (= (str.++ var851 "WHERE no_d_id =" ) var850 ) ))
(assert (= true (= (str.++ var852 "FROM tpcc_new_order" ) var851 ) ))
(assert (= true (= (str.++ var854 "SELECT no_o_id" ) var852 ) ))
(assert (= true (= (str.++ var856 "SELECT \x2a FROM \x28" ) var854 ) ))
(assert (= true (<= 0 var859 ) ))
(assert (= true (= 1 var858 ) ))
(assert (= true (= var823 var863 ) ))

(check-sat)
(get-model)