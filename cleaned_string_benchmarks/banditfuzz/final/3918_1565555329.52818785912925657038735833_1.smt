;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.1422271728515625, 'smt_solvers/QF_S/cvc4/': 0.6918675899505615, 'smt_solvers/QF_S/z3str3/': 0.1446225643157959, 'smt_solvers/QF_S/z3str3fed/': 0.12417364120483398}
;  score   = 0.5472450256347656
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.prefixof var3 var1))(assert (> (str.indexof var3 var4 0) (str.indexof (str.substr var1 6 var8) (str.replace var3 var1 var4) (str.indexof var0 var4 var7))))(assert (> (str.indexof (str.replace var0 var0 var4) (str.replace var0 var2 var1) (str.len var3)) (str.len (str.replace "##K)reF1M\\" var0 var4))))(assert (str.suffixof (str.replace "yHKR.`auWr" var2 var2) (str.substr var2 var6 var9)))(assert (>= (str.len var0) (str.indexof (str.at var4 var5) (str.substr var0 var7 var6) (str.indexof var1 var4 var7))))(check-sat)