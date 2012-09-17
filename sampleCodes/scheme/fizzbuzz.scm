#!/usr/local/bin/gosh
; どうやら、「手続き」と「関数」はLISPでは同じ意味？(Schemeでは「手続き」、Common Lispでは「関数」？)
; http://blog.livedoor.jp/lisp_learner_group/archives/369091.html
(use srfi-1) ; iota手続きを使うため
; lambda式は引数列とコードを受け取りその様な手続きを生成する
(define dividable (lambda (x y) (= (modulo x y) 0)))
; condはswitch-case文のようなもの
(define fizzbuzz (lambda (x) (cond
                               ((dividable x 15) "fizzbuzz")
                               ((dividable x 5)  "buzz")
                               ((dividable x 3)  "fizz")
                               ( else            x)
                               )
                   )
  )

; (iota 100 1) → (1 2 3 .... 99 100)
; mapの部分はfizzbuzz手続きを(iota 100 1)の各要素に適用したリストを返す、と考えれば良い
; printでそのリストを出力している
(print (map fizzbuzz (iota 100 1)))

