(define (accumulate op initial lst)
  (if (null? lst)
      initial
      (op (car lst) (accumulate op initial (cdr lst)))))

(accumulate cons '() (list 1 2 3))

(define (fringe lst)
  (define (iter items result)
    (cond ((null? items) '())
	  ((not (pair? items)) (list items))
	  (else (append (iter (car items) result)
		      (iter (cdr items) result)))))
  (iter lst '()))

(fringe (list 1 2 (list 3 4)))

(define (count-leaves t)
  (accumulate (lambda (x y) (+ 1 y)) 0 (fringe t)))

(define (count-leaves1 t)
  (accumulate
   +
   0
   (map (lambda (x)
	  (if (pair? x)
	      (count-leaves1 x)
	      1))
	t)))

(count-leaves (list 1 2 3 4))
(count-leaves (list 1 (list 2 3 4 (list 5 6)) (list 7 8)))
(count-leaves1 (list 1 (list 2 3 4 (list 5 6)) (list 7 8)))
