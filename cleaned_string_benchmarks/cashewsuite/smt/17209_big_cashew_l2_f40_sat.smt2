(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v90 () String)
(declare-fun v92 () String)
(declare-fun v91 () String)
(declare-fun v94 () String)
(declare-fun v93 () String)
(declare-fun v96 () String)
(declare-fun v95 () String)
(declare-fun v98 () String)
(declare-fun v10 () String)
(declare-fun v97 () String)
(declare-fun v12 () String)
(declare-fun v99 () String)
(declare-fun v11 () String)
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
(declare-fun v1 () String)
(declare-fun v48 () String)
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
(declare-fun v114 () String)
(declare-fun v112 () String)
(declare-fun v113 () String)
(declare-fun v110 () String)
(declare-fun v111 () String)
(declare-fun v81 () String)
(declare-fun v80 () String)
(declare-fun v83 () String)
(declare-fun v82 () String)
(declare-fun v109 () String)
(declare-fun v85 () String)
(declare-fun v84 () String)
(declare-fun v107 () String)
(declare-fun v87 () String)
(declare-fun v108 () String)
(declare-fun v86 () String)
(declare-fun v105 () String)
(declare-fun v89 () String)
(declare-fun v106 () String)
(declare-fun v88 () String)

(assert (= (str.len v0) 0))
(assert (= (str.len v1) 0))
(assert (= (str.len v2) 0))
(assert (>= (str.len v3) 1))
(assert (>= (str.len v4) 1))
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
(assert (= v29 "A"))
(assert (= v30 "B"))
(assert (= v31 v31))
(assert (= v32 v32))
(assert (= v33 v33))
(assert (= v34 (str.++ v32 v5)))
(assert (= v35 (str.++ v36 v6)))
(assert (= v37 (str.++ v38 v7)))
(assert (= v39 (str.++ v40 v8)))
(assert (= v41 (str.++ v42 v9)))
(assert (= v43 (str.++ v44 v10)))
(assert (= v45 (str.++ v46 v11)))
(assert (= v47 (str.++ v48 v12)))
(assert (= v49 (str.++ v50 v13)))
(assert (= v51 (str.++ v52 v14)))
(assert (= v53 (str.++ v54 v15)))
(assert (= v55 (str.++ v56 v16)))
(assert (= v57 (str.++ v58 v17)))
(assert (= v59 (str.++ v60 v18)))
(assert (= v61 (str.++ v62 v19)))
(assert (= v63 (str.++ v64 v20)))
(assert (= v65 (str.++ v66 v21)))
(assert (= v67 (str.++ v68 v22)))
(assert (= v69 (str.++ v70 v23)))
(assert (= v71 (str.++ v72 v24)))
(assert (= v73 (str.++ v74 v25)))
(assert (= v75 (str.++ v76 v26)))
(assert (= v77 (str.++ v78 v27)))
(assert (= v79 (str.++ v80 v28)))
(assert (= v81 (str.++ v82 v29)))
(assert (= v31 (str.++ v34 v83)))
(assert (= v32 (str.++ v0 v84)))
(assert (= v85 (str.++ v35 v86)))
(assert (= v86 (str.++ v37 v87)))
(assert (= v87 (str.++ v39 v88)))
(assert (= v88 (str.++ v41 v89)))
(assert (= v89 (str.++ v43 v90)))
(assert (= v90 (str.++ v45 v91)))
(assert (= v91 (str.++ v47 v92)))
(assert (= v92 (str.++ v49 v93)))
(assert (= v93 (str.++ v51 v94)))
(assert (= v94 (str.++ v53 v95)))
(assert (= v83 (str.++ v55 v96)))
(assert (= v97 (str.++ v98 v99)))
(assert (= v95 (str.++ v57 v100)))
(assert (= v100 (str.++ v59 v101)))
(assert (= v101 (str.++ v61 v102)))
(assert (= v102 (str.++ v63 v103)))
(assert (= v103 (str.++ v65 v33)))
(assert (= v96 (str.++ v67 v104)))
(assert (= v98 (str.++ v105 v30)))
(assert (= v106 (str.++ v31 v107)))
(assert (= v104 (str.++ v69 v108)))
(assert (= v108 (str.++ v71 v109)))
(assert (= v109 (str.++ v73 v110)))
(assert (= v110 (str.++ v75 v111)))
(assert (= v111 (str.++ v77 v112)))
(assert (= v112 (str.++ v79 v113)))
(assert (= v113 (str.++ v81 v85)))
(assert (= v4 (str.++ v1 v97)))
(assert (= v4 (str.++ v2 v114)))
(assert (= v4 (str.++ v3 v106)))
(assert (not (str.in.re v32 (str.to.re "A"))))
(assert (not (str.in.re v56 (str.to.re "A"))))
(assert (not (str.in.re v36 (str.to.re "A"))))
(assert (not (str.in.re v38 (str.to.re "A"))))
(assert (not (str.in.re v40 (str.to.re "A"))))
(assert (not (str.in.re v42 (str.to.re "A"))))
(assert (not (str.in.re v44 (str.to.re "A"))))
(assert (not (str.in.re v46 (str.to.re "A"))))
(assert (not (str.in.re v48 (str.to.re "A"))))
(assert (not (str.in.re v50 (str.to.re "A"))))
(assert (not (str.in.re v52 (str.to.re "A"))))
(assert (not (str.in.re v54 (str.to.re "A"))))
(assert (not (str.in.re v68 (str.to.re "A"))))
(assert (not (str.in.re v58 (str.to.re "A"))))
(assert (not (str.in.re v60 (str.to.re "A"))))
(assert (not (str.in.re v62 (str.to.re "A"))))
(assert (not (str.in.re v64 (str.to.re "A"))))
(assert (not (str.in.re v66 (str.to.re "A"))))
(assert (not (str.in.re v70 (str.to.re "A"))))
(assert (not (str.in.re v72 (str.to.re "A"))))
(assert (not (str.in.re v74 (str.to.re "A"))))
(assert (not (str.in.re v76 (str.to.re "A"))))
(assert (not (str.in.re v78 (str.to.re "A"))))
(assert (not (str.in.re v80 (str.to.re "A"))))
(assert (not (str.in.re v82 (str.to.re "A"))))
(assert (not (str.in.re v84 (str.to.re "C"))))
(assert (not (str.in.re v114 (str.to.re "#"))))
(assert (not (str.in.re v105 (str.to.re "B"))))

(check-sat)
(get-model)
