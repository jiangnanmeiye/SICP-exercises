(define (double x)
    (* x 2))

(define (halve x)
    (/ x 2))

(define (even? x)
    (= (remainder x 2) 
        0))

(define (fast-expt-multi a b)
    (cond ((= b 0) 0)
        ((even? b) (fast-expt-multi (double a) (halve b)))
        (else (+ (fast-expt-multi a (- b 1)) a))))        
    