(declare-fun uri () String)

(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not (not (not (= (ite (str.contains (str.substr (str.substr (str.substr uri 10 (- (str.len uri) 10)) 0 (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0)) 7 (- (str.len (str.substr (str.substr uri 10 (- (str.len uri) 10)) 0 (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0))) 7)) ",") 1 0) 0)))) (not (not (= (ite (= (str.len (str.substr (str.substr (str.substr uri 10 (- (str.len uri) 10)) 0 (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0)) 7 (- (str.len (str.substr (str.substr uri 10 (- (str.len uri) 10)) 0 (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0))) 7))) 0) 1 0) 0)))) (not (not (= (ite (str.contains (str.substr (str.substr (str.substr uri 10 (- (str.len uri) 10)) 0 (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0)) 0 (- 6 0)) "%") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr (str.substr (str.substr uri 10 (- (str.len uri) 10)) 0 (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0)) 0 (- 6 0)) "+") 1 0) 0)))) (not (= (ite (not (= (str.len (str.substr (str.substr (str.substr uri 10 (- (str.len uri) 10)) 0 (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0)) 0 (- 6 0))) 0)) 1 0) 0))) (not (not (= (ite (str.contains (str.substr (str.substr (str.substr uri 10 (- (str.len uri) 10)) 0 (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0)) 0 (- 6 0)) ":") 1 0) 0)))) (not (not (= (ite (= (str.len (str.substr (str.substr (str.substr uri 10 (- (str.len uri) 10)) 0 (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0)) 0 (- 6 0))) 0) 1 0) 0)))) (not (not (= (ite (str.contains (str.substr (str.substr (str.substr uri 10 (- (str.len uri) 10)) 0 (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0)) 0 (- 6 0)) ":") 1 0) 0)))) (not (not (= (ite (str.contains (str.substr (str.substr (str.substr uri 10 (- (str.len uri) 10)) 0 (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0)) 0 (- 6 0)) "@") 1 0) 0)))) (not (= (ite (str.contains (str.substr (str.substr uri 10 (- (str.len uri) 10)) 0 (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0)) "@") 1 0) 0))) (not (= (ite (not (= (str.len (str.substr (str.substr uri 10 (- (str.len uri) 10)) (+ (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 1) (- (str.len (str.substr uri 10 (- (str.len uri) 10))) (+ (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 1)))) 0)) 1 0) 0))) (not (not (= (ite (= (str.len (str.substr (str.substr uri 10 (- (str.len uri) 10)) (+ (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 1) (- (str.len (str.substr uri 10 (- (str.len uri) 10))) (+ (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 1)))) 0) 1 0) 0)))) (not (= (ite (str.contains (str.substr uri 10 (- (str.len uri) 10)) "/") 1 0) 0))) (not (not (= (ite (= (str.len (str.substr uri 10 (- (str.len uri) 10))) 0) 1 0) 0)))) (not (not (= (ite (str.contains (str.substr uri 10 (- (str.len uri) 10)) ".sock") 1 0) 0)))) (not (= (ite (not (= (str.len (str.substr uri 10 (- (str.len uri) 10))) 0)) 1 0) 0))) (not (= (ite (str.prefixof "mongodb://" uri) 1 0) 0))) (not (= (ite (str.prefixof "mongodb://" uri) 1 0) 0))) (not (= (ite (str.contains uri "://") 1 0) 0))) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 0 0)) (>= (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 0 0)) (>= (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0) 0)) (>= 7 0)) (>= (- (str.len (str.substr (str.substr uri 10 (- (str.len uri) 10)) 0 (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0))) 7) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 0 0)) (>= (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 0 0)) (>= (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0) 0)) (>= 7 0)) (>= (- (str.len (str.substr (str.substr uri 10 (- (str.len uri) 10)) 0 (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0))) 7) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 0 0)) (>= (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0) 0)) (>= 0 0)) (>= (- 6 0) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 0 0)) (>= (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0) 0)) (>= 0 0)) (>= (- 6 0) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 0 0)) (>= (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0) 0)) (>= 0 0)) (>= (- 6 0) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 0 0)) (>= (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0) 0)) (>= 0 0)) (>= (- 6 0) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 0 0)) (>= (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0) 0)) (>= 0 0)) (>= (- 6 0) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 0 0)) (>= (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0) 0)) (>= 0 0)) (>= (- 6 0) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 0 0)) (>= (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0) 0)) (>= 0 0)) (>= (- 6 0) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 0 0)) (>= (- (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 0) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= (+ (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 1) 0)) (>= (- (str.len (str.substr uri 10 (- (str.len uri) 10))) (+ (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 1)) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= (+ (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 1) 0)) (>= (- (str.len (str.substr uri 10 (- (str.len uri) 10))) (+ (str.indexof (str.substr uri 10 (- (str.len uri) 10)) "/" 0) 1)) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)) (>= 10 0)) (>= (- (str.len uri) 10) 0)))

(check-sat)

;(get-value (uri))