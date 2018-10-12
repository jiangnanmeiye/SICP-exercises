(define (last-pair list)
  (if (null? (cdr list))
      list
      (last-pair (cdr list))))

(define (last-pair1 list)
  (let ([next (cdr list)])
    (if (null? next)
	list
	(last-pair1 next))))

(last-pair (list 1 2 3 4 5))
(last-pair1 (list 1 2 3 4))

(define (last-num list)
  (car (last-pair1 list)))
