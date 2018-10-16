(define (deep-reverse lst)
  (define (iter items result)
    (cond ((null? items) result)
	  ((pair? (car items))
	   (list (iter (cadr items) result)
		 (iter (car items) result)))
	  (else (iter (cdr items) (cons (car items) result)))))
  (iter lst '()))

;;Test deep-reverse
(define x (list (list 1 2) (list 3 4)))
(deep-reverse x)
