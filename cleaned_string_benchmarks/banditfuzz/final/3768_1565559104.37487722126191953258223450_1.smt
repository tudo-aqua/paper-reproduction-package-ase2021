;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.352480411529541, 'smt_solvers/QF_S/z3str3/': 0.12463974952697754, 'smt_solvers/QF_S/z3seq/': 0.09964251518249512, 'smt_solvers/QF_S/z3str3fed/': 0.07793116569519043}
;  score   = 0.22784066200256348
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.in.re (str.substr (str.at var0 9) (str.len var0) (str.indexof var5 var5 var6)) (re.+ re.allchar)))(assert (str.in.re var5 re.allchar))(assert (< (str.indexof var0 var5 var8) (str.indexof var3 var4 var9)))(assert (str.contains (str.replace var4 var0 var2) (str.at (str.replace var0 var3 var5) (str.len var4))))(assert (not (str.suffixof (str.substr var2 var10 var10) (str.++ var1 var1))))(check-sat)