(declare-fun var1 () String)
(declare-fun var3 () String)
(declare-fun var4 () String)
(declare-fun var6 () String)
(declare-fun var7 () String)
(declare-fun var8 () String)
(declare-fun var9 () String)
(declare-fun var10 () String)
(declare-fun var11 () String)
(declare-fun var12 () String)
(declare-fun var13 () String)
(declare-fun var14 () String)
(declare-fun var16 () String)
(declare-fun var17 () String)
(declare-fun var18 () String)
(declare-fun var19 () Int)
(declare-fun var21 () String)
(declare-fun var22 () Int)
(declare-fun var26 () String)
(declare-fun var27 () String)
(declare-fun var29 () String)
(declare-fun var31 () String)
(declare-fun var32 () String)
(declare-fun var33 () String)
(declare-fun var34 () String)
(declare-fun var36 () String)
(declare-fun var38 () String)
(declare-fun var40 () String)
(declare-fun var42 () String)
(declare-fun var43 () String)
(declare-fun var45 () String)
(declare-fun var47 () String)
(declare-fun var49 () String)
(declare-fun var51 () String)
(declare-fun var54 () String)
(declare-fun var53 () String)
(declare-fun var55 () String)
(declare-fun var56 () String)
(declare-fun var58 () String)
(declare-fun var59 () String)

(assert (str.in.re var59  (re.union  (re.++  (str.to.re "\x5c\x3c") (re.++ (re.*  (str.to.re "\x20") ) (re.++  (re.union  (str.to.re "\x53")  (str.to.re "\x73")) (re.++  (re.union  (str.to.re "\x43")  (str.to.re "\x63")) (re.++  (re.union  (str.to.re "\x52")  (str.to.re "\x72")) (re.++  (re.union  (str.to.re "\x49")  (str.to.re "\x69")) (re.++  (re.union  (str.to.re "\x50")  (str.to.re "\x70")) (re.++  (re.union  (str.to.re "\x54")  (str.to.re "\x74")) (re.++ (re.*  (str.to.re "\x20") ) (re.++  (str.to.re "\x5c\x3e") (re.++ (re.+  (re.union (re.range "\x61" "\x7a") (re.union (re.range "\x41" "\x5a") (re.union (re.range "\x30" "\x39") (re.union  (str.to.re "\x5c\x28") (re.union  (str.to.re "\x5c\x29")  (str.to.re "\x3b")))))) ) (re.++  (str.to.re "\x5c\x3c") (re.++  (str.to.re "\x2f") (re.++ (re.*  (str.to.re "\x20") ) (re.++  (re.union  (str.to.re "\x53")  (str.to.re "\x73")) (re.++  (re.union  (str.to.re "\x43")  (str.to.re "\x63")) (re.++  (re.union  (str.to.re "\x52")  (str.to.re "\x72")) (re.++  (re.union  (str.to.re "\x49")  (str.to.re "\x69")) (re.++  (re.union  (str.to.re "\x50")  (str.to.re "\x70")) (re.++  (re.union  (str.to.re "\x54")  (str.to.re "\x74")) (re.++  (str.to.re "\x20")  (str.to.re "\x5c\x3e"))))))))))))))))))))))  (re.++  (str.to.re "\x5c\x3c") (re.++ (re.*  (str.to.re "\x20") ) (re.++  (re.union  (str.to.re "\x49")  (str.to.re "\x69")) (re.++  (re.union  (str.to.re "\x4d")  (str.to.re "\x6d")) (re.++  (re.union  (str.to.re "\x47")  (str.to.re "\x67")) (re.++  (str.to.re "\x20") (re.++  (re.union  (str.to.re "\x53")  (str.to.re "\x73")) (re.++  (re.union  (str.to.re "\x52")  (str.to.re "\x72")) (re.++  (re.union  (str.to.re "\x43")  (str.to.re "\x63")) (re.++  (str.to.re "\x3d") (re.++  (re.union  (str.to.re "\x4a")  (str.to.re "\x6a")) (re.++  (re.union  (str.to.re "\x41")  (str.to.re "\x61")) (re.++  (re.union  (str.to.re "\x56")  (str.to.re "\x76")) (re.++  (re.union  (str.to.re "\x41")  (str.to.re "\x61")) (re.++  (re.union  (str.to.re "\x53")  (str.to.re "\x73")) (re.++  (re.union  (str.to.re "\x43")  (str.to.re "\x63")) (re.++  (re.union  (str.to.re "\x52")  (str.to.re "\x72")) (re.++  (re.union  (str.to.re "\x49")  (str.to.re "\x69")) (re.++  (re.union  (str.to.re "\x50")  (str.to.re "\x70")) (re.++  (re.union  (str.to.re "\x54")  (str.to.re "\x74")) (re.++  (str.to.re "\x3a") (re.++ (re.+  (re.union (re.range "\x61" "\x7a") (re.union (re.range "\x41" "\x5a") (re.union (re.range "\x30" "\x39") (re.union  (str.to.re "\x5c\x28") (re.union  (str.to.re "\x5c\x29")  (str.to.re "\x3b")))))) ) (re.++ (re.*  (str.to.re "\x20") )  (str.to.re "\x5c\x3e"))))))))))))))))))))))))) ) )
(assert (= var1 var3 ) )
(assert (= var3 (str.++ var4 "\x3c/FONT\x3e\x3c/TD\x3e\x3c/TR\x3e" ) ) )
(assert (= var4 (str.++ var6 var7 ) ) )
(assert (= var6 (str.++ var8 var9 ) ) )
(assert (= var8 (str.++ var10 var11 ) ) )
(assert (= var10 (str.++ var12 var13 ) ) )
(assert (= var12 (str.++ var14 "\x3c/TD\x3e\x3cTD STYLE=TEXT\x2dALIGN:right;\x3e\x3cFONT SIZE=1\x3e" ) ) )
(assert (= var14 (str.++ var16 var17 ) ) )
(assert (or (= var13 var17 ) (= var13 var18 ) ) )
(assert (not (= var19 0 )) )
(assert (or (= var11 var21 ) (= var11 var17 ) ) )
(assert (not (= var22 0 )) )
(assert (= var7 var26 ) )
(assert (= var26 (str.++ var27 "\x22\x3e\x3c/A\x3e\x26nbsp;" ) ) )
(assert (= var27 (str.++ var29 "delete" ) ) )
(assert (= var29 (str.++ var31 var32 ) ) )
(assert (= var32 var33 ) )
(assert (= var33 (str.++ var34 "BORDER=0 ALT=\x22" ) ) )
(assert (= var34 (str.++ var36 "http://localhost/delbut\x2epng" ) ) )
(assert (= var36 (str.++ var38 "SRC=" ) ) )
(assert (= var38 (str.++ var40 "\x3e\x3cIMG" ) ) )
(assert (= var40 (str.++ var42 var17 ) ) )
(assert (= var42 (str.++ var43 "\x3faction=delete\x26id=" ) ) )
(assert (= var43 (str.++ var45 "pblguestbook\x2ephp" ) ) )
(assert (= var45 (str.++ var47 "; HREF=" ) ) )
(assert (= var47 (str.++ var49 "blue" ) ) )
(assert (= var49 (str.++ var51 "\x26nbsp;\x3cA STYLE=COLOR:" ) ) )
(assert (or (= var9 var53 ) (= var9 var54 ) ) )
(assert (= var54 var55 ) )
(assert (= var55 (str.++ var56 "\x22\x3e\x26nbsp;" ) ) )
(assert (= var56 (str.++ var58 var59 ) ) )

(check-sat)
