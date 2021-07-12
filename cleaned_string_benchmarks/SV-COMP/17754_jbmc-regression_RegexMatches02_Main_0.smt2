(declare-const _string0 String)
(assert (str.in.re _string0 (re.++ (str.to.re "W") (re.++ (re.* re.allchar) (re.++ (re.range "0" "9") (re.++ (re.union (re.range "0" "3") (re.range "5" "9")) (re.++ (str.to.re "-") (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.++ (str.to.re "-") (re.++ (re.range "0" "9") (re.range "0" "9"))))))))))))
(assert true)
(check-sat)
