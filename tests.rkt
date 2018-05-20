#lang racket/base

(require rackunit "exercises.rkt")

;Exercise 01
(check-equal? (sum-of-squares-of-top-two 1 2 3) 13)
(check-equal? (sum-of-squares-of-top-two 3 4 2) 25)
(check-equal? (sum-of-squares-of-top-two 5 3 4) 41)

;Exercise 02
(check-equal? (A 1 10) 1024)
(check-equal? (A 2 4) 65536)
(check-equal? (A 3 3) 65536)