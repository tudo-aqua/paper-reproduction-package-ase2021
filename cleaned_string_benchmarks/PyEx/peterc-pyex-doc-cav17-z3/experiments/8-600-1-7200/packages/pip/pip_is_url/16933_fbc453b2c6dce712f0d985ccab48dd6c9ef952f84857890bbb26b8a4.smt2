(declare-fun url () String)

(assert (and (and (and (and (and (not (not (not (= (ite (= (str.len (str.substr url (+ (str.indexof url ":" 0) 1) (- (str.len url) (+ (str.indexof url ":" 0) 1)))) 0) 1 0) 0)))) (not (= (ite (str.contains url ":") 1 0) 0))) (not (not (= (ite (= (str.len url) 0) 1 0) 0)))) (not (= (ite (str.contains url ":") 1 0) 0))) (>= (+ (str.indexof url ":" 0) 1) 0)) (>= (- (str.len url) (+ (str.indexof url ":" 0) 1)) 0)))

(check-sat)

;(get-value (url))