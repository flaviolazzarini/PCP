;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Aufgabe9) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (a-op a) (cond
[(>= a 0) a] [else (* a -1)]))


(define (abs-a-plus-b a b)
  (+ (a-op a)(a-op b))
)

(abs-a-plus-b -3 5)

(define (abs-a-op-b rel-op a b)
  (rel-op (a-op a)(a-op b))
 )
(abs-a-op-b * 5 -3)