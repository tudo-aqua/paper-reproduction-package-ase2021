;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.09269905090332031, 'smt_solvers/QF_S/z3str3/': 0.1116635799407959, 'smt_solvers/QF_S/z3str3fed/': 0.07329368591308594, 'smt_solvers/QF_S/cvc4/': 0.27664923667907715}
;  score   = 0.16498565673828125
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (>= (str.indexof var1 var1 var10) (str.len var3)))(assert (str.prefixof (str.at (str.replace var2 var3 var2) (str.indexof "uO>^U<4xM." var5 var10)) (str.replace (str.replace var0 var3 var1) (str.replace var4 var3 var5) (str.at var3 var11))))(assert (str.contains var3 ".<Jv9-?;i"""))(assert (< (str.len (str.at var1 (str.len (str.replace var2 var2 var1)))) (str.len (str.at var3 var7))))(assert (>= (str.indexof (str.at var1 var11) (str.at var1 var11) (str.indexof (str.substr var4 var8 var8) (str.substr var0 var8 var11) (str.len var0))) (str.len var0)))(check-sat)