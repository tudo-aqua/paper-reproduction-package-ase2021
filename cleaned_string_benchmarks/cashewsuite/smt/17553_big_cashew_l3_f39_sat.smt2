(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v90 () String)
(declare-fun v92 () String)
(declare-fun v91 () String)
(declare-fun v94 () String)
(declare-fun v93 () String)
(declare-fun v96 () String)
(declare-fun v95 () String)
(declare-fun v10 () String)
(declare-fun v98 () String)
(declare-fun v97 () String)
(declare-fun v12 () String)
(declare-fun v11 () String)
(declare-fun v99 () String)
(declare-fun v14 () String)
(declare-fun v13 () String)
(declare-fun v16 () String)
(declare-fun v15 () String)
(declare-fun v18 () String)
(declare-fun v17 () String)
(declare-fun v19 () String)
(declare-fun v21 () String)
(declare-fun v20 () String)
(declare-fun v23 () String)
(declare-fun v22 () String)
(declare-fun v25 () String)
(declare-fun v24 () String)
(declare-fun v27 () String)
(declare-fun v26 () String)
(declare-fun v29 () String)
(declare-fun v28 () String)
(declare-fun v30 () String)
(declare-fun v32 () String)
(declare-fun v31 () String)
(declare-fun v34 () String)
(declare-fun v33 () String)
(declare-fun v36 () String)
(declare-fun v35 () String)
(declare-fun v38 () String)
(declare-fun v37 () String)
(declare-fun v39 () String)
(declare-fun v41 () String)
(declare-fun v40 () String)
(declare-fun v43 () String)
(declare-fun v42 () String)
(declare-fun v45 () String)
(declare-fun v44 () String)
(declare-fun v47 () String)
(declare-fun v46 () String)
(declare-fun v49 () String)
(declare-fun v0 () String)
(declare-fun v48 () String)
(declare-fun v1 () String)
(declare-fun v2 () String)
(declare-fun v3 () String)
(declare-fun v4 () String)
(declare-fun v5 () String)
(declare-fun v6 () String)
(declare-fun v7 () String)
(declare-fun v8 () String)
(declare-fun v9 () String)
(declare-fun v103 () String)
(declare-fun v104 () String)
(declare-fun v101 () String)
(declare-fun v102 () String)
(declare-fun v100 () String)
(declare-fun v50 () String)
(declare-fun v52 () String)
(declare-fun v51 () String)
(declare-fun v54 () String)
(declare-fun v53 () String)
(declare-fun v56 () String)
(declare-fun v55 () String)
(declare-fun v58 () String)
(declare-fun v57 () String)
(declare-fun v59 () String)
(declare-fun v61 () String)
(declare-fun v60 () String)
(declare-fun v63 () String)
(declare-fun v62 () String)
(declare-fun v65 () String)
(declare-fun v64 () String)
(declare-fun v67 () String)
(declare-fun v66 () String)
(declare-fun v69 () String)
(declare-fun v68 () String)
(declare-fun v70 () String)
(declare-fun v72 () String)
(declare-fun v71 () String)
(declare-fun v74 () String)
(declare-fun v73 () String)
(declare-fun v76 () String)
(declare-fun v75 () String)
(declare-fun v78 () String)
(declare-fun v77 () String)
(declare-fun v79 () String)
(declare-fun v112 () String)
(declare-fun v110 () String)
(declare-fun v111 () String)
(declare-fun v81 () String)
(declare-fun v80 () String)
(declare-fun v83 () String)
(declare-fun v82 () String)
(declare-fun v85 () String)
(declare-fun v109 () String)
(declare-fun v84 () String)
(declare-fun v87 () String)
(declare-fun v107 () String)
(declare-fun v86 () String)
(declare-fun v108 () String)
(declare-fun v89 () String)
(declare-fun v105 () String)
(declare-fun v88 () String)
(declare-fun v106 () String)

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
(assert (= v22 "A"))
(assert (= v23 "A"))
(assert (= v24 "A"))
(assert (= v25 "A"))
(assert (= v26 "A"))
(assert (= v27 "A"))
(assert (= v28 "A"))
(assert (= v29 "B"))
(assert (= v30 v30))
(assert (= v31 v31))
(assert (= v32 (str.++ v33 v4)))
(assert (= v34 (str.++ v35 v5)))
(assert (= v36 (str.++ v37 v6)))
(assert (= v38 (str.++ v39 v7)))
(assert (= v40 (str.++ v41 v8)))
(assert (= v42 (str.++ v43 v9)))
(assert (= v44 (str.++ v45 v10)))
(assert (= v46 (str.++ v47 v11)))
(assert (= v48 (str.++ v49 v12)))
(assert (= v50 (str.++ v51 v13)))
(assert (= v52 (str.++ v53 v14)))
(assert (= v54 (str.++ v55 v15)))
(assert (= v56 (str.++ v57 v16)))
(assert (= v58 (str.++ v59 v17)))
(assert (= v60 (str.++ v61 v18)))
(assert (= v62 (str.++ v63 v19)))
(assert (= v64 (str.++ v65 v20)))
(assert (= v66 (str.++ v67 v21)))
(assert (= v68 (str.++ v69 v22)))
(assert (= v70 (str.++ v71 v23)))
(assert (= v72 (str.++ v73 v24)))
(assert (= v74 (str.++ v75 v25)))
(assert (= v76 (str.++ v77 v26)))
(assert (= v78 (str.++ v79 v27)))
(assert (= v80 (str.++ v81 v28)))
(assert (= v30 (str.++ v32 v82)))
(assert (= v83 (str.++ v34 v84)))
(assert (= v84 (str.++ v36 v85)))
(assert (= v85 (str.++ v38 v86)))
(assert (= v86 (str.++ v40 v87)))
(assert (= v87 (str.++ v42 v88)))
(assert (= v88 (str.++ v44 v89)))
(assert (= v89 (str.++ v46 v90)))
(assert (= v90 (str.++ v48 v91)))
(assert (= v91 (str.++ v50 v92)))
(assert (= v92 (str.++ v52 v93)))
(assert (= v82 (str.++ v54 v94)))
(assert (= v95 (str.++ v96 v97)))
(assert (= v93 (str.++ v56 v98)))
(assert (= v98 (str.++ v58 v99)))
(assert (= v99 (str.++ v60 v100)))
(assert (= v100 (str.++ v62 v101)))
(assert (= v101 (str.++ v64 v31)))
(assert (= v94 (str.++ v66 v102)))
(assert (= v96 (str.++ v103 v29)))
(assert (= v104 (str.++ v30 v105)))
(assert (= v102 (str.++ v68 v106)))
(assert (= v106 (str.++ v70 v107)))
(assert (= v107 (str.++ v72 v108)))
(assert (= v108 (str.++ v74 v109)))
(assert (= v109 (str.++ v76 v110)))
(assert (= v110 (str.++ v78 v111)))
(assert (= v111 (str.++ v80 v83)))
(assert (= v3 (str.++ v0 v95)))
(assert (= v3 (str.++ v1 v112)))
(assert (= v3 (str.++ v2 v104)))
(assert (not (str.in.re v33 (str.to.re "A"))))
(assert (not (str.in.re v55 (str.to.re "A"))))
(assert (not (str.in.re v35 (str.to.re "A"))))
(assert (not (str.in.re v37 (str.to.re "A"))))
(assert (not (str.in.re v39 (str.to.re "A"))))
(assert (not (str.in.re v41 (str.to.re "A"))))
(assert (not (str.in.re v43 (str.to.re "A"))))
(assert (not (str.in.re v45 (str.to.re "A"))))
(assert (not (str.in.re v47 (str.to.re "A"))))
(assert (not (str.in.re v49 (str.to.re "A"))))
(assert (not (str.in.re v51 (str.to.re "A"))))
(assert (not (str.in.re v53 (str.to.re "A"))))
(assert (not (str.in.re v67 (str.to.re "A"))))
(assert (not (str.in.re v57 (str.to.re "A"))))
(assert (not (str.in.re v59 (str.to.re "A"))))
(assert (not (str.in.re v61 (str.to.re "A"))))
(assert (not (str.in.re v63 (str.to.re "A"))))
(assert (not (str.in.re v65 (str.to.re "A"))))
(assert (not (str.in.re v69 (str.to.re "A"))))
(assert (not (str.in.re v71 (str.to.re "A"))))
(assert (not (str.in.re v73 (str.to.re "A"))))
(assert (not (str.in.re v75 (str.to.re "A"))))
(assert (not (str.in.re v77 (str.to.re "A"))))
(assert (not (str.in.re v79 (str.to.re "A"))))
(assert (not (str.in.re v81 (str.to.re "A"))))
(assert (not (str.in.re v112 (str.to.re "#"))))
(assert (not (str.in.re v103 (str.to.re "B"))))

(check-sat)
(get-model)
