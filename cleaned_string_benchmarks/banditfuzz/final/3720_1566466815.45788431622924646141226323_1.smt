;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.34613561630249023, 'smt_solvers/QF_S/cvc4/': 1.0523643493652344, 'smt_solvers/QF_S/z3str3fed/': 0.5082499980926514, 'smt_solvers/QF_S/z3str3/': 0.4180934429168701}
;  score   = 0.544114351272583
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (< 4 var8))(assert (str.in.re (str.substr var3 var10 var6) (re.+ re.allchar)))(assert (str.in.re (str.at var0 var10) (re.* (re.+ re.allchar))))(assert (str.in.re "Ol.;+MVQx-" re.allchar))(assert (str.suffixof (str.substr "^?UpC>dnkb" var6 var11) (str.substr var4 var6 var8)))(assert (str.in.re (str.replace (str.substr var4 var8 9) (str.at var2 var11) (str.replace var1 var4 var1)) (re.* (re.* re.allchar))))(assert (str.suffixof (str.substr (str.replace var5 var4 var5) (str.indexof var5 var0 var8) (str.indexof var3 var4 var7)) (str.replace (str.replace var1 var4 var3) (str.substr var2 var11 10) (str.at "]1hHGnFU?T" var11))))(check-sat)