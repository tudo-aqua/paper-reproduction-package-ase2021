;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.0945897102355957, 'smt_solvers/QF_S/z3str3/': 0.1500225067138672, 'smt_solvers/QF_S/z3seq/': 0.10624957084655762, 'smt_solvers/QF_S/cvc4/': 2500}
;  score   = 7499.849977493286
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'timeout'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (< var7 var11))(assert (< (str.len (str.replace var1 var0 var2)) (str.indexof (str.replace var2 var0 var0) (str.substr var0 var7 var7) (str.len var1))))(assert (str.contains (str.at (str.replace var2 var3 var4) (str.indexof var2 var4 var11)) (str.substr var3 6 var6)))(assert (> var10 var11))(assert (str.suffixof (str.at (str.replace var3 var0 var3) (str.indexof var5 var2 var11)) (str.replace var2 var3 var5)))(assert (< (str.indexof var3 "sEzNu?A,3$" var10) (str.indexof var1 var0 var9)))(assert (str.contains (str.at "~$%JY)H;Dx" var10) (str.substr var5 var9 var6)))(check-sat)