;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.10824942588806152, 'smt_solvers/QF_S/cvc4/': 0.2611527442932129, 'smt_solvers/QF_S/z3str3fed/': 0.08258843421936035, 'smt_solvers/QF_S/z3str3/': 0.1145322322845459}
;  score   = 0.146620512008667
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> (str.indexof (str.at var2 var7) (str.substr "?oi1aYadyp" var7 7) (str.indexof var4 var3 var8)) (str.len var1)))(assert (not var11))(assert (<= (str.len var3) (str.len var2)))(assert (< (str.len var1) (str.indexof var1 var0 var6)))(assert (str.in.re var3 re.allchar))(check-sat)