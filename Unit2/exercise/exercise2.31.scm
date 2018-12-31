(define square
  (lambda (item)
    (* item item)))

(define (tree-map f tree)
  (map (lambda (item)
	 (if (pair? item)
	     (tree-map f item)
	     (f item)))
       tree))

(define (square-tree2 tree) (tree-map square tree))

;;Test square-tree2
(square-tree2 (list 1 (list 2 (list 3 4) 5) (list 6 7)))
