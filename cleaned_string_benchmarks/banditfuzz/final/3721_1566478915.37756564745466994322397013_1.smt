;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.10851550102233887, 'smt_solvers/QF_S/z3str3fed/': 0.09020113945007324, 'smt_solvers/QF_S/z3str3/': 0.22318720817565918, 'smt_solvers/QF_S/cvc4/': 0.5005695819854736}
;  score   = 0.27738237380981445
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (not false))(assert (str.prefixof var0 var3))(assert (<= (str.indexof var3 var1 var8) (str.indexof var1 var3 var6)))(assert (str.in.re var1 re.allchar))(assert (<= (str.indexof var1 var3 var7) (str.len var3)))(assert (<= var11 var9))(assert (> (str.indexof (str.replace var1 var3 var4) (str.replace var4 var0 var4) (str.indexof var0 var0 var10)) (str.len var5)))(check-sat)