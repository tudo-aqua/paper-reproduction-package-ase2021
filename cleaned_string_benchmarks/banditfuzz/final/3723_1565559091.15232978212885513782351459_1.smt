;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 7.094786643981934, 'smt_solvers/QF_S/z3str3fed/': 0.07288312911987305, 'smt_solvers/QF_S/z3str3/': 0.10562586784362793, 'smt_solvers/QF_S/z3seq/': 0.0894167423248291}
;  score   = 6.989160776138306
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (> (str.indexof (str.replace var4 var5 var4) (str.substr var1 var9 var7) (str.indexof var5 var4 var6)) (str.indexof (str.at var3 var10) (str.substr "?KtKMDYLN_" var7 var7) (str.len var5))))(assert (str.suffixof (str.at (str.replace var4 var4 var4) (str.len (str.replace var0 var2 var3))) (str.substr "l:xs(dmH)S" var11 var10)))(assert (< (str.len var2) (str.indexof var5 var5 var6)))(assert (>= (str.to.int var1) (str.len var2)))(assert (>= var6 0))(check-sat)