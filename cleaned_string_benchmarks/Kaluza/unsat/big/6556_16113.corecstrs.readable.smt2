(declare-fun I0_6 () Int)
(declare-fun PCTEMP_LHS_1 () String)
(declare-fun PCTEMP_LHS_2 () Int)
(declare-fun T0_6 () String)
(declare-fun T1_11 () String)
(declare-fun T1_12 () String)
(declare-fun T1_5 () String)
(declare-fun T1_6 () String)
(declare-fun T2_11 () String)
(declare-fun T2_12 () String)
(declare-fun T2_5 () String)
(declare-fun T2_6 () String)
(declare-fun T3_6 () String)
(declare-fun T4_6 () String)
(declare-fun T5_6 () String)
(declare-fun T_2 () String)
(declare-fun T_4 () Bool)
(declare-fun T_5 () String)
(declare-fun T_6 () String)
(declare-fun T_SELECT_1 () Bool)
(assert (not (str.in.re PCTEMP_LHS_1 (re.++   (str.to.re "%" )  (re.++   (str.to.re "h" ) (re.++  (str.to.re "o" ) (re.++  (str.to.re "s" ) (re.++  (str.to.re "t" )  (str.to.re "%" )  ) ) ) ) ) )))
(assert (= PCTEMP_LHS_1 "//%host%/gadgets/makeRequest"))
(assert (= T_2 (str.++ T1_5 T2_5)))
(assert (= T2_5 "?refresh=3600&url=http%3A%2F%2Fwww.mylisty.net%2FListy%2Fhtml%2FDataManager.action%3Bjsessionid%3DB519EB2BE2BA17FC08E5E661654C6683%3Fuser_id%3D20100221100109213027%26type%3Dadd_row%26tab_index%3D0%26tab_name%3DListy%26data%3DGMAm20UEFJ%26priority%3D3%26row_number%3D0%26sid%3D0.09673176273905826&httpMethod=GET&headers=&postData=&authz=&st=&contentType=DOM&numEntries=3&getSummaries=false&signOwner=true&signViewer=true&gadget=http%3A%2F%2Fwww.mylisty.net%2FListy%2Fgadget%2FMyListy.xml&container=ig&bypassSpecCache=0"))
(assert (= T1_5 PCTEMP_LHS_1))
(assert (= T_SELECT_1 (not (= PCTEMP_LHS_2 (- 1)))))
(assert (ite T_SELECT_1 (and (= PCTEMP_LHS_2 (+ I0_6 0))(= T_2 (str.++ T0_6 T1_6))(= I0_6 (str.len T4_6))(= 0 (str.len T0_6))(= T1_6 (str.++ T2_6 T3_6))(= T2_6 (str.++ T4_6 T5_6))(= T5_6 "//")(not (str.in.re T4_6 (re.++   (str.to.re "/" )    (str.to.re "/" )  ) ))) (and (= PCTEMP_LHS_2 (- 1))(= T_2 (str.++ T0_6 T1_6))(= 0 (str.len T0_6))(not (str.in.re T1_6 (re.++   (str.to.re "/" )    (str.to.re "/" )  ) )))))
(assert (= T_4 (= PCTEMP_LHS_2 0)))
(assert T_4)
(assert (= T_5 (str.++ T1_11 T2_11)))
(assert (= T2_11 "?refresh=3600&url=http%3A%2F%2Fwww.mylisty.net%2FListy%2Fhtml%2FDataManager.action%3Bjsessionid%3DB519EB2BE2BA17FC08E5E661654C6683%3Fuser_id%3D20100221100109213027%26type%3Dadd_row%26tab_index%3D0%26tab_name%3DListy%26data%3DGMAm20UEFJ%26priority%3D3%26row_number%3D0%26sid%3D0.09673176273905826&httpMethod=GET&headers=&postData=&authz=&st=&contentType=DOM&numEntries=3&getSummaries=false&signOwner=true&signViewer=true&gadget=http%3A%2F%2Fwww.mylisty.net%2FListy%2Fgadget%2FMyListy.xml&container=ig&bypassSpecCache=0"))
(assert (= T1_11 PCTEMP_LHS_1))
(assert (= T_6 (str.++ T1_12 T2_12)))
(assert (= T2_12 T_5))
(assert (= T1_12 "http:"))
(check-sat)
