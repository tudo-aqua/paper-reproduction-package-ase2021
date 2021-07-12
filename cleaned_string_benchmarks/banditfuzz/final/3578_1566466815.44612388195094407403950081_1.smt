;  depth   = 3
;  nconst  = 6
;  assertions = 7
;  timeout = 2500
;  time    = {'smt_solvers/QF_S/cvc4/': 2500, 'smt_solvers/QF_S/z3str3/': 267.67378187179565, 'smt_solvers/QF_S/z3seq/': 95.28507995605469, 'smt_solvers/QF_S/z3str3fed/': 149.72559905052185}
;  score   = 7232.326218128204
;  stdout  = {'smt_solvers/QF_S/cvc4/': 'timeout', 'smt_solvers/QF_S/z3str3/': 'unsat', 'smt_solvers/QF_S/z3seq/': 'sat', 'smt_solvers/QF_S/z3str3fed/': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () String)(declare-fun var4 () String)(declare-fun var5 () String)(declare-fun var6 () Int)(declare-fun var7 () Int)(declare-fun var8 () Int)(declare-fun var9 () Int)(declare-fun var10 () Int)(declare-fun var11 () Int)(declare-fun var12 () Bool)(declare-fun var13 () Bool)(declare-fun var14 () Bool)(declare-fun var15 () Bool)(declare-fun var16 () Bool)(declare-fun var17 () Bool)(assert (str.suffixof var5 var2))(assert (str.suffixof var5 var4))(assert (not (>= (str.len "|d_8%CUbQT") (str.indexof var4 var5 var6))))(assert (str.contains "GSM4G'E+|L" var2))(assert (str.prefixof (str.replace (str.replace var3 var3 var4) (str.replace var5 var0 "(.Xy;\\bpSm") (str.substr var2 var11 var6)) (str.replace (str.replace var4 "gKRP}416W?" var4) (str.replace var3 var2 var2) (str.substr var3 var6 var10))))(assert (str.in.re (str.replace var1 var4 var0) (re.+ re.allchar)))(assert (str.contains (str.substr var4 var7 var11) (str.at (str.substr var5 var10 var10) (str.len var1))))(check-sat)