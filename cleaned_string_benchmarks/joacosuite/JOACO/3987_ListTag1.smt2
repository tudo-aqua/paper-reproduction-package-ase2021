(set-logic QF_S)
(set-option :produce-models true)

(declare-fun var20 () String)
(declare-fun var7 () String)
(declare-fun var16 () String)
(declare-fun var11 () String)
(declare-fun var23 () String)

(assert (= true (str.in.re var20  (re.union  (re.++  (str.to.re "\x3c") (re.++ (re.*  (str.to.re " ") ) (re.++  (re.union  (str.to.re "S")  (str.to.re "s")) (re.++  (re.union  (str.to.re "C")  (str.to.re "c")) (re.++  (re.union  (str.to.re "R")  (str.to.re "r")) (re.++  (re.union  (str.to.re "I")  (str.to.re "i")) (re.++  (re.union  (str.to.re "P")  (str.to.re "p")) (re.++  (re.union  (str.to.re "T")  (str.to.re "t")) (re.++ (re.*  (str.to.re " ") ) (re.++  (str.to.re "\x3e") (re.++ (re.+  (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union  (str.to.re "\x28") (re.union  (str.to.re "\x29")  (str.to.re ";")))))) ) (re.++  (str.to.re "\x3c") (re.++  (str.to.re "/") (re.++ (re.*  (str.to.re " ") ) (re.++  (re.union  (str.to.re "S")  (str.to.re "s")) (re.++  (re.union  (str.to.re "C")  (str.to.re "c")) (re.++  (re.union  (str.to.re "R")  (str.to.re "r")) (re.++  (re.union  (str.to.re "I")  (str.to.re "i")) (re.++  (re.union  (str.to.re "P")  (str.to.re "p")) (re.++  (re.union  (str.to.re "T")  (str.to.re "t")) (re.++  (str.to.re " ")  (str.to.re "\x3e"))))))))))))))))))))))  (re.++  (str.to.re "\x3c") (re.++ (re.*  (str.to.re " ") ) (re.++  (re.union  (str.to.re "I")  (str.to.re "i")) (re.++  (re.union  (str.to.re "M")  (str.to.re "m")) (re.++  (re.union  (str.to.re "G")  (str.to.re "g")) (re.++  (str.to.re " ") (re.++  (re.union  (str.to.re "S")  (str.to.re "s")) (re.++  (re.union  (str.to.re "R")  (str.to.re "r")) (re.++  (re.union  (str.to.re "C")  (str.to.re "c")) (re.++  (str.to.re "=") (re.++  (re.union  (str.to.re "J")  (str.to.re "j")) (re.++  (re.union  (str.to.re "A")  (str.to.re "a")) (re.++  (re.union  (str.to.re "V")  (str.to.re "v")) (re.++  (re.union  (str.to.re "A")  (str.to.re "a")) (re.++  (re.union  (str.to.re "S")  (str.to.re "s")) (re.++  (re.union  (str.to.re "C")  (str.to.re "c")) (re.++  (re.union  (str.to.re "R")  (str.to.re "r")) (re.++  (re.union  (str.to.re "I")  (str.to.re "i")) (re.++  (re.union  (str.to.re "P")  (str.to.re "p")) (re.++  (re.union  (str.to.re "T")  (str.to.re "t")) (re.++  (str.to.re ":") (re.++ (re.+  (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union  (str.to.re "\x28") (re.union  (str.to.re "\x29")  (str.to.re ";")))))) ) (re.++ (re.*  (str.to.re " ") )  (str.to.re "\x3e"))))))))))))))))))))))))) ) ))
(assert (= true (not (= "" var20 )) ))
(assert (= true (not (= "" var7 )) ))
(assert (= true (= var11 var16 ) ))
(assert (= true (not (= "" var23 )) ))

(check-sat)
(get-model)