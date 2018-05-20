#lang racket/base

;01.Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.
(define (sum-of-squares-of-top-two x y z) 
    (define (sum-of-square a b) (+ (* a a) (* b b)))
    (cond ((and (< x y) (< x z)) (sum-of-square y z))
          ((and (< y x) (< y z)) (sum-of-square x z))
          (else (sum-of-square x y))
    )
)
(provide sum-of-squares-of-top-two)

#| 02.Implement the Ackermann's function A. It takes two parameters, x and y, and works as follows:
if y = 0, then it returns 0;
if x = 0, then it returns 2*y;
if y = 1, then it returns 2;
else, it calls itself (function A) with x = x-1 and y = A ( x, (y - 1) ); |#
(define (A x y) 
    (cond ((= y 0) 0)
          ((= x 0) (* 2 y))
          ((= y 1) 2)
          (else (A (- x 1) 
                    (A x (- y 1))))
    )
)
(provide A)