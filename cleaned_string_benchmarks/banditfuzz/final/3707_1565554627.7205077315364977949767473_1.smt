;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.06299686431884766, 'smt_solvers/QF_S/cvc4/': 0.08578753471374512, 'smt_solvers/QF_S/z3seq/': 0.0800943374633789, 'smt_solvers/QF_S/z3str3/': 0.0850827693939209}
;  score   = 0.0007047653198242188
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.in.re (str.substr var3 10 var7) (re.+ re.allchar)))(assert (str.prefixof (str.replace var1 "u_yx8[(p`=" var1) (str.at var2 var5)))(assert (> (str.indexof var2 var2 var7) (str.len (str.at var0 var7))))(assert (str.suffixof var2 var1))(assert (str.prefixof (str.at "OqUtX`-o,""" var9) (str.at var3 var9)))(check-sat)