;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3seq/': 0.35039854049682617, 'smt_solvers/QF_S/z3str3/': 0.4532790184020996, 'smt_solvers/QF_S/z3str3fed/': 0.3143646717071533}
;  score   = 7499.546720981598
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (< var9 var7))(assert (>= (str.indexof var5 "Iy_;+$.1|T" var11) (str.len var0)))(assert (<= var8 var6))(assert (>= var7 var9))(assert (str.suffixof (str.replace var5 "e^1Af6Bsa(" var3) (str.replace var1 var1 var1)))(assert (<= var9 var11))(assert (<= (str.len var4) (str.indexof var5 var5 (str.len var1))))(check-sat)