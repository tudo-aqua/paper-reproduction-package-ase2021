;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.16594934463500977, 'smt_solvers/QF_S/z3str3fed/': 0.48729753494262695, 'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3str3/': 0.09965085983276367}
;  score   = 7499.512702465057
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (> (str.len (str.at "BCMh?s{3Ni" var7)) (str.len var5)))(assert (<= (str.len var1) (str.indexof (str.at var3 var11) (str.replace ",v0$A5vsm5" var0 var5) (str.to.int var4))))(assert (<= (str.len var3) (str.indexof var1 var2 var11)))(assert (str.contains var4 var2))(assert (str.suffixof (str.at var4 var11) (str.at var0 0)))(assert (< (str.indexof var4 var1 var8) (str.indexof var3 var3 var11)))(assert (not (not (> var10 var8))))(check-sat)