(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v6 () String)
(declare-fun v7 () String)
(declare-fun v8 () String)
(declare-fun v9 () String)
(declare-fun v50 () String)
(declare-fun v52 () String)
(declare-fun v51 () String)
(declare-fun v54 () String)
(declare-fun v10 () String)
(declare-fun v53 () String)
(declare-fun v56 () String)
(declare-fun v12 () String)
(declare-fun v11 () String)
(declare-fun v55 () String)
(declare-fun v58 () String)
(declare-fun v14 () String)
(declare-fun v13 () String)
(declare-fun v57 () String)
(declare-fun v16 () String)
(declare-fun v59 () String)
(declare-fun v15 () String)
(declare-fun v18 () String)
(declare-fun v17 () String)
(declare-fun v19 () String)
(declare-fun v61 () String)
(declare-fun v60 () String)
(declare-fun v63 () String)
(declare-fun v62 () String)
(declare-fun v21 () String)
(declare-fun v65 () String)
(declare-fun v20 () String)
(declare-fun v64 () String)
(declare-fun v23 () String)
(declare-fun v67 () String)
(declare-fun v22 () String)
(declare-fun v66 () String)
(declare-fun v25 () String)
(declare-fun v69 () String)
(declare-fun v24 () String)
(declare-fun v68 () String)
(declare-fun v27 () String)
(declare-fun v26 () String)
(declare-fun v29 () String)
(declare-fun v28 () String)
(declare-fun v70 () String)
(declare-fun v72 () String)
(declare-fun v71 () String)
(declare-fun v30 () String)
(declare-fun v74 () String)
(declare-fun v73 () String)
(declare-fun v76 () String)
(declare-fun v32 () String)
(declare-fun v75 () String)
(declare-fun v31 () String)
(declare-fun v34 () String)
(declare-fun v78 () String)
(declare-fun v33 () String)
(declare-fun v77 () String)
(declare-fun v36 () String)
(declare-fun v35 () String)
(declare-fun v79 () String)
(declare-fun v38 () String)
(declare-fun v37 () String)
(declare-fun v39 () String)
(declare-fun v81 () String)
(declare-fun v80 () String)
(declare-fun v83 () String)
(declare-fun v82 () String)
(declare-fun v41 () String)
(declare-fun v84 () String)
(declare-fun v40 () String)
(declare-fun v43 () String)
(declare-fun v42 () String)
(declare-fun v45 () String)
(declare-fun v44 () String)
(declare-fun v47 () String)
(declare-fun v46 () String)
(declare-fun v0 () String)
(declare-fun v49 () String)
(declare-fun v1 () String)
(declare-fun v48 () String)
(declare-fun v2 () String)
(declare-fun v3 () String)
(declare-fun v4 () String)
(declare-fun v5 () String)

(assert (= (str.len v0) 0))
(assert (= (str.len v1) 0))
(assert (>= (str.len v2) 1))
(assert (>= (str.len v3) 1))
(assert (= v4 "A"))
(assert (= v5 "A"))
(assert (= v6 "A"))
(assert (= v7 "A"))
(assert (= v8 "A"))
(assert (= v9 "A"))
(assert (= v10 "A"))
(assert (= v11 "A"))
(assert (= v12 "A"))
(assert (= v13 "A"))
(assert (= v14 "A"))
(assert (= v15 "A"))
(assert (= v16 "A"))
(assert (= v17 "A"))
(assert (= v18 "A"))
(assert (= v19 "A"))
(assert (= v20 "A"))
(assert (= v21 "A"))
(assert (= v22 "B"))
(assert (= v23 v23))
(assert (= v24 v24))
(assert (= v25 (str.++ v26 v4)))
(assert (= v27 (str.++ v28 v5)))
(assert (= v29 (str.++ v30 v6)))
(assert (= v31 (str.++ v32 v7)))
(assert (= v33 (str.++ v34 v8)))
(assert (= v35 (str.++ v36 v9)))
(assert (= v37 (str.++ v38 v10)))
(assert (= v39 (str.++ v40 v11)))
(assert (= v41 (str.++ v42 v12)))
(assert (= v43 (str.++ v44 v13)))
(assert (= v45 (str.++ v46 v14)))
(assert (= v47 (str.++ v48 v15)))
(assert (= v49 (str.++ v50 v16)))
(assert (= v51 (str.++ v52 v17)))
(assert (= v53 (str.++ v54 v18)))
(assert (= v55 (str.++ v56 v19)))
(assert (= v57 (str.++ v58 v20)))
(assert (= v59 (str.++ v60 v21)))
(assert (= v23 (str.++ v25 v61)))
(assert (= v62 (str.++ v27 v63)))
(assert (= v63 (str.++ v29 v64)))
(assert (= v64 (str.++ v31 v65)))
(assert (= v65 (str.++ v33 v66)))
(assert (= v66 (str.++ v35 v67)))
(assert (= v67 (str.++ v37 v68)))
(assert (= v68 (str.++ v39 v69)))
(assert (= v69 (str.++ v41 v24)))
(assert (= v61 (str.++ v43 v70)))
(assert (= v71 (str.++ v72 v73)))
(assert (= v70 (str.++ v45 v74)))
(assert (= v72 (str.++ v75 v22)))
(assert (= v76 (str.++ v23 v77)))
(assert (= v74 (str.++ v47 v78)))
(assert (= v78 (str.++ v49 v79)))
(assert (= v79 (str.++ v51 v80)))
(assert (= v80 (str.++ v53 v81)))
(assert (= v81 (str.++ v55 v82)))
(assert (= v82 (str.++ v57 v83)))
(assert (= v83 (str.++ v59 v62)))
(assert (= v3 (str.++ v0 v71)))
(assert (= v3 (str.++ v1 v84)))
(assert (= v3 (str.++ v2 v76)))
(assert (not (str.in.re v26 (str.to.re "A"))))
(assert (not (str.in.re v44 (str.to.re "A"))))
(assert (not (str.in.re v28 (str.to.re "A"))))
(assert (not (str.in.re v30 (str.to.re "A"))))
(assert (not (str.in.re v32 (str.to.re "A"))))
(assert (not (str.in.re v34 (str.to.re "A"))))
(assert (not (str.in.re v36 (str.to.re "A"))))
(assert (not (str.in.re v38 (str.to.re "A"))))
(assert (not (str.in.re v40 (str.to.re "A"))))
(assert (not (str.in.re v42 (str.to.re "A"))))
(assert (not (str.in.re v46 (str.to.re "A"))))
(assert (not (str.in.re v48 (str.to.re "A"))))
(assert (not (str.in.re v50 (str.to.re "A"))))
(assert (not (str.in.re v52 (str.to.re "A"))))
(assert (not (str.in.re v54 (str.to.re "A"))))
(assert (not (str.in.re v56 (str.to.re "A"))))
(assert (not (str.in.re v58 (str.to.re "A"))))
(assert (not (str.in.re v60 (str.to.re "A"))))
(assert (not (str.in.re v84 (str.to.re "#"))))
(assert (not (str.in.re v75 (str.to.re "B"))))

(check-sat)
(get-model)
