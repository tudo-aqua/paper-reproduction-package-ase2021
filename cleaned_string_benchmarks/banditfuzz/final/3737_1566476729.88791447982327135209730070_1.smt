;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3str3fed/': 0.24641919136047363, 'smt_solvers/QF_S/z3str3/': 0.29811644554138184, 'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3seq/': 0.11248397827148438}
;  score   = 7499.701883554459
;  stdout  = {'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3seq/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (> var10 var11))(assert (<= (str.len var5) (str.len var0)))(assert (> (str.indexof (str.replace var5 var2 var4) (str.substr "y|D0!c\\?gD" var8 var9) (str.indexof var4 var1 var11)) (str.indexof var5 var5 var9)))(assert (str.in.re (str.replace var3 var1 var2) (re.+ re.allchar)))(assert (str.suffixof (str.replace (str.substr var1 var7 var10) (str.at var4 var11) (str.at var0 var8)) (str.replace (str.replace var0 var1 var1) (str.substr var5 var6 var9) (str.substr var4 var9 var9))))(assert (not (str.contains (str.at var3 var11) (str.at var4 var10))))(assert (> (str.indexof (str.at "'%Eb13Z}};" 1) (str.replace "aGTjuygUtK" var4 var3) (str.indexof var1 var2 var8)) (str.len (str.substr var0 var8 var11))))(check-sat)