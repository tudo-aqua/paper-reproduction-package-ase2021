(declare-fun headerkey () String)

(assert (and (and (and (and (not (not (not (= (ite (str.contains headerkey "E") 1 0) 0)))) (not (not (= (ite (str.contains headerkey "D") 1 0) 0)))) (not (not (= (ite (str.contains headerkey "C") 1 0) 0)))) (not (not (= (ite (str.contains headerkey "B") 1 0) 0)))) (not (not (= (ite (str.contains headerkey "A") 1 0) 0)))))

(check-sat)

;(get-value (headerkey))