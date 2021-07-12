;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.3780677318572998, 'smt_solvers/QF_S/z3str3/': 0.5347578525543213, 'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3str3fed/': 0.5339782238006592}
;  score   = 7499.465242147446
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.prefixof (str.at "dN#iibuy$z" 3) (str.substr var4 7 var8)))(assert (str.in.re (str.at var2 var10) (re.+ re.allchar)))(assert (< (str.indexof (str.at var3 var11) (str.at var3 var7) (str.indexof var5 var5 (str.len (str.replace var2 var5 var1)))) (str.indexof (str.replace var2 var4 var1) (str.substr var3 var10 var7) (str.indexof "@j<0=B,Quy" var1 var6))))(assert (str.suffixof var3 var5))(assert (>= var10 var10))(assert (> 7 var7))(assert (>= (str.indexof var1 var4 var8) (str.len (str.replace var3 var5 var1))))(check-sat)