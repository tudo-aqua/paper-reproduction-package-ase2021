;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.07395315170288086, 'smt_solvers/QF_S/z3str3/': 0.1069784164428711, 'smt_solvers/QF_S/cvc4/': 0.27099061012268066, 'smt_solvers/QF_S/z3seq/': 0.10881948471069336}
;  score   = 0.1621711254119873
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.suffixof var4 var4))(assert (not (> var9 var11)))(assert (>= (str.len var1) (str.len "'RN9MgBRuK")))(assert (< var9 var11))(assert (< (str.len var2) (str.indexof (str.at var5 var6) (str.replace var4 var5 "I*DVlOk4O!") (str.indexof var3 var4 var6))))(assert (< (str.indexof var5 var5 var11) (str.indexof (str.substr var5 var7 var7) (str.at var2 var8) (str.len var2))))(assert (not (str.contains var1 var4)))(check-sat)