;  depth   = 3
;  nconst  = 5
;  assertions = 5
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/z3seq/': 0.19468402862548828, 'smt_solvers/QF_S/z3str3/': 0.2485659122467041, 'smt_solvers/QF_S/z3str3fed/': 0.12113690376281738, 'smt_solvers/QF_S/cvc4/': 0.3869760036468506}
;  score   = 0.13841009140014648
;  stdout  = {'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/z3str3/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'sat', 'smt_solvers/QF_S/cvc4/': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () Int)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Bool)(declare-fun var11 () Bool)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(assert (> (str.len var1) (str.indexof var3 var0 var8)))(assert (< var5 var7))(assert (> (str.indexof var0 "=eR1rB8&s'" var5) (str.len "FkNSNv/[1:")))(assert (str.contains "seB\\sCyoi+" var2))(assert (not var10))(check-sat)