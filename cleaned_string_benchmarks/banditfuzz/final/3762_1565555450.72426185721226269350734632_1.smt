;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 1139.9709558486938, 'smt_solvers/QF_S/z3str3fed/': 757.0398557186127, 'smt_solvers/QF_S/z3str3/': 110.97592043876648, 'smt_solvers/QF_S/z3seq/': 0.6855251789093018}
;  score   = 382.9311001300812
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'unsat', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (str.in.re (str.substr "p/BPc1P]Je" 0 var9) (re.+ re.allchar)))(assert (str.prefixof "~T@w1&t0q6" var3))(assert (str.prefixof (str.substr var2 10 var8) (str.replace (str.at var1 var5) (str.replace var0 "S:`~25(WDb" var2) (str.substr var4 var7 var6))))(assert (< (str.indexof (str.substr var3 var6 var7) (str.replace var0 var2 var3) (str.len var3)) (str.indexof var1 var0 var5)))(assert (> (str.indexof (str.at var2 var7) (str.at var1 var7) (str.indexof var0 "=8X?li+KeX" var7)) (str.indexof var1 var2 var7)))(check-sat)