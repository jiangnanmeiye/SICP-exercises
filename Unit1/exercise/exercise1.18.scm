(define (double x)
    (* x 2))

(define (halve x)
    (/ x 2))

(define (even? x)
    (= (remainder x 2) 
        0))

(define (multi a b)
    (multi-iter a b 0))

(define (multi-iter a b product)
    (cond ((= b 0) product)
        ((even? b) (multi-iter (double a) (halve b) product))
        (else (multi-iter a (- b 1) (+ product a)))))