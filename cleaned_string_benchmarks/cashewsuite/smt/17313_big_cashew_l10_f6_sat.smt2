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
(declare-fun v129 () String)
(declare-fun v20 () String)
(declare-fun v127 () String)
(declare-fun v23 () String)
(declare-fun v22 () String)
(declare-fun v128 () String)
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
(declare-fun v0 () String)
(declare-fun v49 () String)
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
(declare-fun v125 () String)
(declare-fun v126 () String)
(declare-fun v123 () String)
(declare-fun v124 () String)
(declare-fun v121 () String)
(declare-fun v122 () String)
(declare-fun v70 () String)
(declare-fun v120 () String)
(declare-fun v72 () String)
(declare-fun v71 () String)
(declare-fun v74 () String)
(declare-fun v73 () String)
(declare-fun v118 () String)
(declare-fun v76 () String)
(declare-fun v119 () String)
(declare-fun v75 () String)
(declare-fun v116 () String)
(declare-fun v78 () String)
(declare-fun v117 () String)
(declare-fun v77 () String)
(declare-fun v79 () String)
(declare-fun v114 () String)
(declare-fun v115 () String)
(declare-fun v112 () String)
(declare-fun v113 () String)
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
(assert (= (str.len v2) 0))
(assert (= (str.len v3) 0))
(assert (= (str.len v4) 0))
(assert (>= (str.len v5) 1))
(assert (>= (str.len v6) 1))
(assert (>= (str.len v7) 1))
(assert (>= (str.len v8) 1))
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
(assert (= v30 "A"))
(assert (= v31 "A"))
(assert (= v32 "A"))
(assert (= v33 "A"))
(assert (= v34 "B"))
(assert (= v35 "C"))
(assert (= v36 v36))
(assert (= v5 v5))
(assert (= v5 v5))
(assert (= v5 v5))
(assert (= v37 v37))
(assert (= v38 v38))
(assert (= v39 v39))
(assert (= v40 v39))
(assert (= v41 (str.++ v5 v9)))
(assert (= v42 (str.++ v43 v10)))
(assert (= v44 (str.++ v45 v11)))
(assert (= v46 (str.++ v47 v12)))
(assert (= v48 (str.++ v49 v13)))
(assert (= v50 (str.++ v51 v14)))
(assert (= v52 (str.++ v53 v15)))
(assert (= v54 (str.++ v55 v16)))
(assert (= v56 (str.++ v57 v17)))
(assert (= v58 (str.++ v59 v18)))
(assert (= v60 (str.++ v61 v19)))
(assert (= v62 (str.++ v37 v20)))
(assert (= v63 (str.++ v64 v21)))
(assert (= v65 (str.++ v66 v22)))
(assert (= v67 (str.++ v68 v23)))
(assert (= v69 (str.++ v70 v24)))
(assert (= v71 (str.++ v72 v25)))
(assert (= v73 (str.++ v74 v26)))
(assert (= v75 (str.++ v76 v27)))
(assert (= v77 (str.++ v78 v28)))
(assert (= v79 (str.++ v80 v29)))
(assert (= v81 (str.++ v82 v30)))
(assert (= v83 (str.++ v84 v31)))
(assert (= v85 (str.++ v86 v32)))
(assert (= v87 (str.++ v88 v33)))
(assert (= v36 (str.++ v41 v89)))
(assert (= v5 (str.++ v0 v90)))
(assert (= v5 (str.++ v4 v91)))
(assert (= v5 (str.++ v6 v92)))
(assert (= v37 (str.++ v2 v93)))
(assert (= v94 (str.++ v42 v95)))
(assert (= v95 (str.++ v44 v96)))
(assert (= v96 (str.++ v46 v97)))
(assert (= v97 (str.++ v48 v98)))
(assert (= v98 (str.++ v50 v99)))
(assert (= v99 (str.++ v52 v100)))
(assert (= v100 (str.++ v54 v101)))
(assert (= v101 (str.++ v56 v102)))
(assert (= v102 (str.++ v58 v103)))
(assert (= v103 (str.++ v60 v104)))
(assert (= v89 (str.++ v62 v105)))
(assert (= v90 (str.++ v106 v107)))
(assert (= v108 (str.++ v109 v110)))
(assert (= v104 (str.++ v63 v111)))
(assert (= v111 (str.++ v65 v112)))
(assert (= v112 (str.++ v67 v113)))
(assert (= v113 (str.++ v69 v114)))
(assert (= v114 (str.++ v71 v38)))
(assert (= v105 (str.++ v73 v115)))
(assert (= v106 (str.++ v116 v34)))
(assert (= v109 (str.++ v117 v35)))
(assert (= v91 (str.++ v118 v119)))
(assert (= v92 (str.++ v39 v120)))
(assert (= v121 (str.++ v36 v122)))
(assert (= v115 (str.++ v75 v123)))
(assert (= v123 (str.++ v77 v124)))
(assert (= v124 (str.++ v79 v125)))
(assert (= v125 (str.++ v81 v126)))
(assert (= v126 (str.++ v83 v127)))
(assert (= v127 (str.++ v85 v128)))
(assert (= v128 (str.++ v87 v94)))
(assert (= v8 (str.++ v1 v108)))
(assert (= v8 (str.++ v3 v129)))
(assert (= v8 (str.++ v7 v121)))
(assert (not (str.in.re v5 (str.to.re "A"))))
(assert (not (str.in.re v37 (str.to.re "A"))))
(assert (not (str.in.re v43 (str.to.re "A"))))
(assert (not (str.in.re v45 (str.to.re "A"))))
(assert (not (str.in.re v47 (str.to.re "A"))))
(assert (not (str.in.re v49 (str.to.re "A"))))
(assert (not (str.in.re v51 (str.to.re "A"))))
(assert (not (str.in.re v53 (str.to.re "A"))))
(assert (not (str.in.re v55 (str.to.re "A"))))
(assert (not (str.in.re v57 (str.to.re "A"))))
(assert (not (str.in.re v59 (str.to.re "A"))))
(assert (not (str.in.re v61 (str.to.re "A"))))
(assert (not (str.in.re v74 (str.to.re "A"))))
(assert (not (str.in.re v64 (str.to.re "A"))))
(assert (not (str.in.re v66 (str.to.re "A"))))
(assert (not (str.in.re v68 (str.to.re "A"))))
(assert (not (str.in.re v70 (str.to.re "A"))))
(assert (not (str.in.re v72 (str.to.re "A"))))
(assert (not (str.in.re v76 (str.to.re "A"))))
(assert (not (str.in.re v78 (str.to.re "A"))))
(assert (not (str.in.re v80 (str.to.re "A"))))
(assert (not (str.in.re v82 (str.to.re "A"))))
(assert (not (str.in.re v84 (str.to.re "A"))))
(assert (not (str.in.re v86 (str.to.re "A"))))
(assert (not (str.in.re v88 (str.to.re "A"))))
(assert (not (str.in.re v40 (str.to.re "D"))))
(assert (not (str.in.re v93 (str.to.re "B"))))
(assert (not (str.in.re v129 (str.to.re "#"))))
(assert (not (str.in.re v116 (str.to.re "B"))))
(assert (not (str.in.re v39 (str.to.re "E"))))
(assert (not (str.in.re v117 (str.to.re "C"))))

(check-sat)
(get-model)
