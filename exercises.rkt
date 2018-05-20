#lang racket/base

;Exercise 1.3. Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.
(define (sum-of-squares-of-top-two x y z) 
    (define (sum-of-square a b) (+ (* a a) (* b b)))
    (cond ((and (< x y) (< x z)) (sum-of-square y z))
          ((and (< y x) (< y z)) (sum-of-square x z))
          (else (sum-of-square x y))
    )
)
(provide sum-of-squares-of-top-two)

#| Exercise 1.10. Implement the Ackermann's function A. It takes two parameters, x and y, and works as follows:
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

#| Exercise 1.11.  A function f is defined by the rule that f(n) = n if n<3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3. Write a procedure that computes f by means of a recursive process. Write a procedure that computes f by means of an iterative process. |#
(define (f n)
    (cond ((< n 3) n)
        (else (+ (f (- n 1)) 
                 (* 2 (f (- n 2))) 
                 (* 3 (f (- n 3)))) 
        )
    )
)
(provide f)

#| Exercise 1.12.  The following pattern of numbers is called Pascal's triangle.
The numbers at the edge of the triangle are all 1, and each number inside the triangle is the sum of the two numbers above it.35 Write a procedure that computes elements of Pascal's triangle by means of a recursive process. |#
(define (pascal-triangle row column)
    (cond ((= 1 column) 1)
          ((> column row) 0)
          ((< column 0) 0)
          ((+ (pascal-triangle (- row 1) (- column 1))
          (pascal-triangle (- row 1) column )))
    )
)
(provide pascal-triangle)

;Exercise 1.3~.Double.
(define (double func) 
    (lambda (a) (func (func a)))
)
(provide double)

;Exercise 1.3~.Repeated application.
 (define (iter acc f arg)
	(if (= acc 1) 
			(f arg)
			(iter (- acc 1) f (f arg))
    )
)
	
(define (repeated f count) 
  (lambda (n) (iter count f n))
)
(provide repeated)