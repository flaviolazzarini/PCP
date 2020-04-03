;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Aufgabe8) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (sort-a-list rel-op num-list)
  (cond
    ((empty? num-list) empty)
    (else (insert rel-op (first num-list)
        (sort-a-list rel-op (rest num-list))))
 ))
; Einfügen in sortierter Liste
(define (insert rel-op item a-list)
  (cond
    ((empty? a-list) (list item))
    ((rel-op item (first a-list)) (cons item a-list))
    (else (cons (first a-list) (insert rel-op item (rest a-list))))
))

(sort-a-list >= (list 1  6 3 9 2 5 7 8 4))
(sort-a-list string<? (list "abc"  "adfd" "vdere" "bdfd" "dfdf" "adfdf" "pkljljk" "wqöx" "sdfd"))