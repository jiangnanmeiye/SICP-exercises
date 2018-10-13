(define us-coins (list 50 25 10 5 1))
(define uk-coins (list 100 50 20 10 5 2 1))

(define (cc amount coin-values)
  (cond ((= amount 0) 1)
	((or (< amount 0) (no-more? coin-values)) 0)
	(else
	 (+ (cc amount
		(except-first-denomination coin-values))
	    (cc (- amount
		   (first-denomination coin-values))
		coin-values)))))

;;except-first-denomination
(define (except-first-denomination list)
  (cdr list))

;;first-denomination
(define (first-denomination list)
  (car list))

;;no-more
(define (no-more? list)
  (if (null? list)
      #t
      #f))

(cc 100 us-coins)
