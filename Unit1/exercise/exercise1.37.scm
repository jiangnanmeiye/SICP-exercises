;;recursive procedure
(define (cont-frac n d k)
  (define (f i)
    (if (= k i)
	(/ (n k) (d k))
	(/ (n i) (+ (d i) (f (+ i 1))))))
  (f 1))

;;iteration procedure
(define (cont-frac-iter n d k)
  (define (f i a)
    (if (= i 1)
	a
	(f (- i 1) (+ (d (- i 1)) (/ (n i) a)))))
  (f k (d k)))

;;(cont-frac (lambda (i) 1.0)
;;	   (lambda (i) 1.0)
;;	   50)
