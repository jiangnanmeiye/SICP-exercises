;;not use Higher-order functions
(define (square-tree lst)
  (cond ((null? lst) '())
	((not (pair? lst)) (* lst lst))
	(else (cons (square-tree (car lst))
		    (square-tree (cdr lst))))))

;;use map substitute abstract
(define (square-tree1 items)
  (map (lambda (item)
	 (if (pair? item)
	     (square-tree1 item)
	     (* item item)))
       items))

;;Test square-tree
(square-tree (list 1 (list 2 (list 3 4) 5) (list 6 7)))
(square-tree1 (list 1 (list 2 (list 3 4) 5) (list 6 7)))
