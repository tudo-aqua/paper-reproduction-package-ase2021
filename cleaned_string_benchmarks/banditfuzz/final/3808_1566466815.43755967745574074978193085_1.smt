;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.23520565032958984, 'smt_solvers/QF_S/z3str3/': 0.4332849979400635, 'smt_solvers/QF_S/z3seq/': 0.47213172912597656, 'smt_solvers/QF_S/cvc4/': 2500}
;  score   = 7499.527868270874
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'timeout'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (not (<= (str.indexof var3 var2 var9) (str.len var4))))(assert (str.suffixof (str.replace var3 var2 "/CvX?Li<6Y") (str.replace var3 "rf>v`:H_$)" var5)))(assert (str.suffixof (str.replace var1 var4 var2) (str.substr (str.at var2 var7) (str.indexof var2 "R<?19(Xz#R" var10) (str.len var4))))(assert (str.prefixof (str.substr (str.at var2 var6) (str.len var3) (str.indexof var3 var2 var9)) (str.substr (str.replace var1 var3 var1) (str.indexof var4 var2 var7) (str.indexof var1 var4 var7))))(assert (not var12))(assert (< (str.indexof (str.at var1 var8) (str.at var5 var8) (str.len var0)) (str.indexof (str.at var4 var6) (str.at "E1RH(@3uQ(" var11) (str.indexof var3 var1 7))))(assert (>= (str.len (str.replace "$m]D,X<Gq;" var1 var3)) (str.len var0)))(check-sat)