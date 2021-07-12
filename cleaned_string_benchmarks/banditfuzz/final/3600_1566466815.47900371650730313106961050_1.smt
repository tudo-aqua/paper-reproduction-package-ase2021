;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3str3fed/': 0.34384655952453613, 'smt_solvers/QF_S/z3seq/': 0.13785743713378906, 'smt_solvers/QF_S/z3str3/': 0.2252357006072998}
;  score   = 7499.6561534404755
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (>= (str.indexof var0 var5 var6) (str.len var2)))(assert (>= (str.indexof var5 var3 var10) (str.len (str.at var1 var10))))(assert (>= (str.indexof var5 var0 var8) (str.len (str.replace var5 var4 var1))))(assert (< (str.indexof var4 var0 var6) (str.len var1)))(assert (str.in.re (str.at var2 var11) (re.+ re.allchar)))(assert (> (str.indexof "`BeHoY/`1l" var2 var6) (str.indexof "'Q~u!Nc9rg" var4 var9)))(assert (str.in.re (str.at (str.++ var1 var3) (str.len var0)) (re.+ re.allchar)))(check-sat)