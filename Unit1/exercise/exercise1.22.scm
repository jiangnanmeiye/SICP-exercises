(define (square x) (* x x))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
       ((divides? test-divisor n) test-divisor)
       (else (find-divisor n (+ test-divisor 1)))))

(define (next n)
    (if (= n 2)
        3
        (+ n 2)))

(define (find-divisor2 n test-divisor)
    (cond ((> (square test-divisor)) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor2 n (next test-divisor)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= (smallest-divisor n) n))

(define (timed-prime-test n)
    (newline)
    (display n)
    (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
    (if (prime? n)
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

(search-for-primes 1000000)