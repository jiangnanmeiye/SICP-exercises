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
  (define (filter judge lst)
    (if (null? lst)
	'()
	(if (judge (car lst))
	    (cons (car lst) (filter judge (cdr lst)))
	    (filter judge (cdr lst)))))
  (if (odd? (car lst))
      (filter odd? lst)
      (filter even? lst)))

;;Test same-parity
(same-parity 1 2 3 4 5)
(same-parity 2 43 54 67 3 5 732 23)
