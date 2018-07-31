(define (fast-expt b n)
    (fast-iter b n 1))

(define (even? n)
    (= (remainder n 2) 0))

(define (odd? n)
    (= (remainder n 2) 1))

(define (fast-iter b n a)
    (cond ((= n 0) 
        a)
        ((even? n) 
            (fast-iter (* b b) (/ n 2) a))
        ((odd? n) 
                (fast-iter b (- n 1) (* b a)))))