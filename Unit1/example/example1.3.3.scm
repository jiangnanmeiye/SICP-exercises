(define (half-interval-method f a b)
  (let ((a-value (f a))
	(b-value (f b)))
    (cond ((and (negative? a-value) (positive? b-value))
	   (search f a b))
	  ((and (negative? b-value) (positive? a-value))
	   (search f b a))
	  (else
	   (error "Value are not of opposite sign" a b)))))

(define (search f neg-point pos-point)
  (let ((mid-point (average neg-point pos-point)))
    (if (close-enough? neg-point pos-point)
	mid-point
	(let ((test-value (f mid-point)))
	  (cond ((negative? test-value)
		 (search f mid-point pos-point))
		((positive? test-value)
		 (search f neg-point mid-point))
		(else midpoint))))))

(define (negative? point)
  (< point 0))

(define (positive? point)
  (> point 0))

(define (average left-point right-point)
  (/ (+ left-point right-point) 2))

(define (close-enough? x y)
  (< (abs (- x y)) 0.001))
