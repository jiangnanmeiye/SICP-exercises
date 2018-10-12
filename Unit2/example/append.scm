(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

(define squares (list 1 2 3 4))
(define odds (list 5 6 7))

(append squares odds)
