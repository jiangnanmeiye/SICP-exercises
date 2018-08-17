(define (cube x)
    (* x x x))

(define (even? n) 
    (= (remainder n 2) 0))

(define (xinpson f a b n) 
    (xinpson-internal f a b n 0))

(define (xinpson-internal f a b n k)
    (define (add-h x)
        (+ x (/ (- b a) n)))
    (* (sum f a add-h b n k)
        (/ (/ (- b a) n) 3)))

(define (sum term a next b n k) 
    (if (> k n)
        0
        (cond ((= k 0) (+ (term a) (sum term (next a) next b n (+ k 1))))
            ((= k n) (+ (term a) (sum term (next a) next b n (+ k 1))))
            ((even? k) (+ (* 2 (term a)) (sum term (next a) next b n (+ k 1))))
            (else (+ (* 4 (term a)) (sum term (next a) next b n (+ k 1)))))))

(xinpson cube 0 1 100)



       