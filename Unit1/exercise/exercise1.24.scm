(define (square x) (* x x))

(define (fermat-test n)
    (define (try-it a)
        (= (expmod a n n) a))
    (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
    (cond ((= times 0)
            true)
          ((fermat-test n)
            (fast-prime? n (- times 1)))
          (else
            false)))

(define (expmod base exp m)
    (cond ((= exp 0)
            1)
            ((even? exp)
            (remainder (square (expmod base (/ exp 2) m))
                        m))
            (else
            (remainder (* base (expmod base (- exp 1) m))
                        m)))) 

(define (timed-prime-test n)
    (newline)
    (display n)
    (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
    (if (fast-prime? n 10)
        (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
    (display " *** ")
    (display elapsed-time))

(define (search-for-primes startNum)
    (search-for-range-primes startNum (+ startNum 1000)))

(define (search-for-range-primes startNum endNum)
    (timed-prime-test startNum)
    (if (< startNum endNum)
        (search-for-range-primes (+ startNum 1) endNum)))