;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 1.088566541671753, 'smt_solvers/QF_S/z3seq/': 0.30169057846069336, 'smt_solvers/QF_S/z3str3fed/': 0.5696439743041992, 'smt_solvers/QF_S/z3str3/': 0.40328359603881836}
;  score   = 0.5189225673675537
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.prefixof (str.substr "fDMdzYY:=q" var7 var10) (str.substr var2 var11 0)))(assert (>= (str.len (str.at ",E^T0a/nL(" var10)) (str.len var1)))(assert (str.contains var3 var2))(assert (> var8 var11))(assert (< (str.indexof var5 var1 var11) (str.len var5)))(assert (<= (str.len var4) (str.indexof (str.substr var1 var11 var8) (str.replace var2 var0 var1) (str.indexof var4 var0 4))))(assert (str.in.re var3 re.allchar))(check-sat)