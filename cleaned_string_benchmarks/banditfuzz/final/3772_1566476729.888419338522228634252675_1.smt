;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3/': 0.08103346824645996, 'smt_solvers/QF_S/z3seq/': 0.08369565010070801, 'smt_solvers/QF_S/z3str3fed/': 0.06318449974060059, 'smt_solvers/QF_S/cvc4/': 0.15754222869873047}
;  score   = 0.07384657859802246
;  stdout  = {'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (> var7 var7))(assert (str.in.re "lD#}:?^,pK" re.allchar))(assert (str.prefixof (str.at var0 var9) (str.substr var5 var9 var11)))(assert (<= (str.len var0) (str.indexof "Av),eP7wP$" var2 10)))(assert (str.in.re (str.replace var5 var3 "{XbI?dMX^0") (re.+ re.allchar)))(assert (< var9 var6))(assert (str.contains (str.substr (str.at var3 var7) (str.indexof (str.at var3 var11) (str.substr var4 var9 var7) (str.indexof var1 var3 var10)) (str.indexof var4 var4 (str.indexof var5 var1 var10))) (str.replace var5 "zF:Os9lv#h" var3)))(check-sat)