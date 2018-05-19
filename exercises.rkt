#lang racket/base

;01.Define a procedure sum-of-squares-of-top-two that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.
(define (sum-of-squares-of-top-two x y z) 
    (define (sum-of-square a b) (+ (* a a) (* b b)))
    (cond ((and (< x y) (< x z)) (sum-of-square y z))
          ((and (< y x) (< y z)) (sum-of-square x z))
          (else (sum-of-square x y))
    )
)
(provide sum-of-squares-of-top-two)