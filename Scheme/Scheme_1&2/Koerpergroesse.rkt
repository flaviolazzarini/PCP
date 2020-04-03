;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Koerpergroesse) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct human (alter geschlecht oberschenkelknochenlaenge))
(define humane (make-human 15 "männlich" 10))
(define (b-length humane) (if (string=? (human-geschlecht humane)"weiblich") (+ 61.412 (* 2.317 (human-oberschenkelknochenlaenge humane))) (+ 69.089 (* 2.238 (human-oberschenkelknochenlaenge humane)))))
(b-length humane)