;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Aufgabe 7|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (list-filter rel-op a-list value)
  (cond
    ((empty? a-list) empty)
    (else
      (cond
        ((rel-op (first a-list) value)
         (cons (first a-list)
               (list-filter rel-op (rest a-list) value)))
        (else (list-filter rel-op (rest a-list) value))))))

(define (dividable? a b )(= 0 (remainder a b)))

(list-filter dividable? (list 1 2 3 4 5 6 7 8 9) 2)
