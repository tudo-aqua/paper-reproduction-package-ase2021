;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.28701257705688477, 'smt_solvers/QF_S/z3str3/': 0.09735536575317383, 'smt_solvers/QF_S/z3str3fed/': 0.0691366195678711, 'smt_solvers/QF_S/z3seq/': 0.08354520797729492}
;  score   = 0.18965721130371094
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (not var16))(assert (>= var9 var11))(assert (str.contains (str.at (str.substr var2 var8 var11) (str.indexof var5 var1 var7)) (str.substr var5 var11 var7)))(assert (>= (str.indexof var0 var4 var8) (str.indexof (str.substr "m~""nzMGJx0" var11 var10) (str.at var2 var11) (str.len var5))))(assert (<= var11 var10))(assert (>= (str.len (str.replace var1 var5 var2)) (str.indexof (str.at var0 var9) (str.at var0 9) (str.len var5))))(assert (< (str.len var1) (str.indexof var5 var5 var10)))(check-sat)