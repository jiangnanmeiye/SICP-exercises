(define (length lst)
  (if (null? lst)
      0
      (+ 1 (length (cdr lst)))))

;;Test length
(length (list 1 2))

(define (for-each f lst)
  (if (not (null? lst))
      (begin
	(f (car lst))
	(for-each f (cdr lst)))))
      

(for-each (lambda (x) (newline) (display x))
	  (list 57 321))
