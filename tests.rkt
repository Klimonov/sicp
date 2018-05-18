#lang racket/base

(require rackunit "Exercises.rkt")

(check-equal? (sqr 5) 25)
(check-equal? (sqr 0) 0)
(check-equal? (sqr -10) 100)
