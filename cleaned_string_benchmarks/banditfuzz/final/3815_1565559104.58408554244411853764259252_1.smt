;  depth   = 3
;  nconst  = 6
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 0.17422175407409668, 'smt_solvers/QF_S/z3seq/': 0.0852358341217041, 'smt_solvers/QF_S/z3str3/': 0.09723711013793945, 'smt_solvers/QF_S/z3str3fed/': 0.06957340240478516}
;  score   = 0.07698464393615723
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (> (str.len (str.substr var2 var7 6)) (str.len (str.at var1 (str.indexof (str.at var4 var7) (str.replace var2 var1 var2) (str.len var4))))))(assert (str.in.re (str.substr var2 var10 3) (re.+ (re.* re.allchar))))(assert (> (str.indexof var5 var4 var6) (str.len var2)))(assert (< var8 var8))(assert (str.in.re (str.substr var2 var6 var9) (re.+ re.allchar)))(check-sat)