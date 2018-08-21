;;This answer is wrong!
(define (product term a next b)
(cond ((= (- a b) 2) 1)
    ((= (- a b) 3) 1)
    (else (* (term a)
            (product term (next a) next b))))
)

(define (factorial cardinal)
  (define (double x)
    (* x x))
  (define (add2 n)
    (+ n 2))
    (product double cardinal add2 100))

(define Pi
    (* 2 
        (/ (factorial 2) 
           (factorial 3))))

Pi


