#lang racket/base

(require rackunit "exercises.rkt")

;Exercise 1.3.
(check-equal? (sum-of-squares-of-top-two 1 2 3) 13)
(check-equal? (sum-of-squares-of-top-two 3 4 2) 25)
(check-equal? (sum-of-squares-of-top-two 5 3 4) 41)

;Exercise 1.10.
(check-equal? (A 1 10) 1024)
(check-equal? (A 2 4) 65536)
(check-equal? (A 3 3) 65536)

;Exercise 1.11. 
(check-equal? (f 1) 1)
(check-equal? (f 2) 2)
(check-equal? (f 3) 4)
(check-equal? (f 4) 11)
(check-equal? (f 5) 25)
(check-equal? (f 6) 59)
(check-equal? (f 7) 142)

;Exercise 1.12.
(check-equal? (pascal-triangle 1 1) 1)
(check-equal? (pascal-triangle 2 2) 1)
(check-equal? (pascal-triangle 3 2) 2)
(check-equal? (pascal-triangle 4 2) 3)
(check-equal? (pascal-triangle 5 2) 4)
(check-equal? (pascal-triangle 5 3) 6)

;Exercise 1.3~.
(define (square x) (* x x))
(define (inc x) (+ x 1))
(check-equal? ((double inc) 1) 3)
(check-equal? ((double inc) 15) 17)
(check-equal? ((double square) 2) 16)
(check-equal? ((double square) 3) 81)

;Exercise 1.3~.
(check-equal? ((repeated inc 2) 5) 7)
(check-equal? ((repeated inc 10) 10) 20)
(check-equal? ((repeated square 2) 5) 625)
(check-equal? ((repeated square 3) 3) 6561)