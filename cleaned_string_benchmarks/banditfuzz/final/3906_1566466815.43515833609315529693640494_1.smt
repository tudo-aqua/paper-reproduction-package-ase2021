;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 13.377182722091675, 'smt_solvers/QF_S/z3str3/': 0.11060738563537598, 'smt_solvers/QF_S/z3seq/': 0.1255648136138916, 'smt_solvers/QF_S/z3str3fed/': 0.09150934219360352}
;  score   = 13.251617908477783
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'unsat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.contains "#OT;+wPq7U" var4))(assert (str.prefixof (str.at var5 var7) (str.replace var3 var3 var2)))(assert (> (str.indexof (str.at var4 var6) (str.replace var3 var4 var0) (str.len var4)) (str.indexof var2 var4 var8)))(assert (< (str.indexof "Em0SV]qxsi" var0 var6) (str.indexof (str.at "Ri+@)zG~pb" var9) (str.at var5 var11) (str.indexof var4 var0 10))))(assert (str.in.re var2 re.allchar))(assert (<= (str.indexof var0 var0 (str.indexof (str.replace var2 var0 var0) (str.at var2 var9) (str.indexof var1 var1 (str.indexof (str.replace var4 var3 var5) (str.replace var3 var1 var4) (str.indexof var3 var0 var6))))) (str.indexof (str.substr var4 var8 var7) (str.substr var4 var8 var7) (str.indexof (str.substr var4 var9 var6) (str.substr var2 var8 var11) (str.indexof var3 var5 var6)))))(assert (>= (str.indexof var2 var5 var10) (str.indexof var5 "G$[K:'In-W" var6)))(check-sat)