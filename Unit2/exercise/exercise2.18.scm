(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))

;;Test list-ref
(list-ref (list 1 2 3 4) 2)

(let ([list (list 1 2 3 4 5 6)])
  (list-ref list (- (length list) 1)))

(define (length list)
  (if (null? list)
      0
      (+ 1 (length (cdr list)))))

;;Test length
(length (list 1 2 3 4 5))

(define nil
  (cdr (cdr (list 1 2))))

(define (pair-except-last list)
  (if [= 2 [length list]]
      (cons (car list) nil)
      (cons (car list) (pair-except-last (cdr list)))))

;;Test pair-except-last
(pair-except-last (list 1 2 3 4 5 6))

(define (reverse list)
  (if [= 1 [length list]]
      list
      (let ([last-item (list-ref list (- (length list) 1))])
	(cons last-item (reverse (pair-except-last list))))))

(reverse (list 1 2 3 4 5 6))


;;Iteration method
(define (reserve1 list)
  (define (iter items result)
    (if (= 0 (length items))
	result
	(iter (cdr items) (cons (car items) result))))
  (iter list '()))

(reserve1 (list 1 2 3 4 5 6 7))
