;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Aufgabe 4|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (delete item a-list)
  (cond
    ((empty? a-list)empty)
    ((eq? item (first a-list)) (rest a-list))
    (else (cons(first a-list)(delete item (rest a-list))))))

(delete 3 (list 1 2 3 4))