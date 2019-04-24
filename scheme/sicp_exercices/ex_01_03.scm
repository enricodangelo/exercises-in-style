;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname es_1_3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))
(define (get-max x y) 
  (cond ((> x y) x)
        (else y)))
(define (1_3 x y z)
  (if (= x (get-max x y))
      (sum-of-squares x (get-max y z))
      (sum-of-squares y (get-max x z))))


