;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.10138678550720215, 'smt_solvers/QF_S/z3str3/': 0.2975327968597412, 'smt_solvers/QF_S/z3seq/': 0.30906200408935547, 'smt_solvers/QF_S/cvc4/': 1.2125239372253418}
;  score   = 0.9034619331359863
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (< (str.indexof var0 var3 var11) (str.indexof var3 var4 var8)))(assert (str.contains (str.replace (str.substr var4 var7 var6) (str.at var5 var8) (str.at "?<qCXmeum|" var10)) (str.replace var5 var2 var2)))(assert (str.prefixof (str.at "Y4.gY#N3O)" var8) (str.replace var0 var1 var0)))(assert (<= (str.len var3) (str.len var5)))(assert (str.in.re (str.substr var2 var6 2) (re.+ re.allchar)))(assert (str.prefixof (str.at (str.at var1 var10) (str.len var5)) (str.at (str.at var1 var10) (str.indexof var5 var3 var6))))(assert (str.prefixof (str.replace var2 var4 var3) (str.replace var3 var3 var3)))(check-sat)