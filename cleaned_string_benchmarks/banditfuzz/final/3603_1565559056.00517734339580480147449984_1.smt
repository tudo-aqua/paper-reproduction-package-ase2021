;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.12564682960510254, 'smt_solvers/QF_S/z3str3/': 0.16443872451782227, 'smt_solvers/QF_S/z3seq/': 0.15195035934448242, 'smt_solvers/QF_S/cvc4/': 0.356273889541626}
;  score   = 0.1918351650238037
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (> (str.indexof var5 "`h{LWX:_""q" var7) (str.len var3)))(assert (str.suffixof (str.at var3 var6) (str.replace (str.substr var1 var11 var11) (str.substr var2 var10 var6) (str.replace var1 var5 var1))))(assert (< (str.indexof var1 var2 var11) (str.len var0)))(assert (str.prefixof (str.replace var5 "NO6l$PZ\\*>" var4) (str.substr (str.at var2 var11) (str.len var0) (str.len "tDEg}YjCo{"))))(assert (not (>= var10 var8)))(check-sat)