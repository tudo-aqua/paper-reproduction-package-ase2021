;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.08747267723083496, 'smt_solvers/QF_S/z3str3fed/': 0.07184767723083496, 'smt_solvers/QF_S/z3seq/': 0.08947253227233887, 'smt_solvers/QF_S/cvc4/': 0.45854830741882324}
;  score   = 0.3690757751464844
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (<= (str.len (str.substr var1 var11 var6)) (str.indexof (str.substr var5 var8 var9) (str.replace var1 var4 var2) (str.to.int var3))))(assert (str.prefixof var5 var5))(assert (not (str.prefixof var1 var0)))(assert (not var14))(assert (> (str.indexof (str.at var2 var8) (str.substr var1 var7 var7) (str.len var2)) (str.len var5)))(assert (str.prefixof (str.at (str.++ var1 var1) (str.indexof var0 var0 (str.len (str.at var1 var10)))) (str.at (str.at var3 var7) (str.len var0))))(assert (>= (str.len var5) (str.indexof var3 var3 (str.len var5))))(check-sat)