(define (odd? num)
  (if (= 1 (remainder num))
      #t
      #f))

(define (even? num)
  (if (= 1 (remainder num))
      #f
      #t))

;;Test for even? and odd?

(define (same-parity . lst)
  (if (null? lst)
      '()
      (cons ((odd? (car lst))
	     ))))