;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.10320043563842773, 'smt_solvers/QF_S/z3str3fed/': 0.08599400520324707, 'smt_solvers/QF_S/z3str3/': 0.11322498321533203, 'smt_solvers/QF_S/cvc4/': 0.7835261821746826}
;  score   = 0.6703011989593506
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.prefixof (str.replace var3 var1 var3) (str.at "FDS91~jIkm" var8)))(assert (< var9 var7))(assert (str.contains (str.at (str.substr var1 var9 var9) (str.to.int var0)) (str.replace (str.replace "nimng;Jn)u" var4 var4) (str.substr var3 var11 var11) (str.substr var3 var11 var9))))(assert (str.suffixof (str.replace var5 var4 var4) (str.substr var3 1 var9)))(assert (str.prefixof (str.replace (str.substr var3 var9 var10) (str.at var2 10) (str.replace var1 var1 var5)) (str.++ var3 "("".#KKU%=A")))(check-sat)