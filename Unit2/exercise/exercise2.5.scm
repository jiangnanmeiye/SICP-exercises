(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

;;Substitution model
(define one (add-1 zero))

(define one (lambda (f) (lambda (x) (f ((zero f) x)))))

(define one (lambda (f) (lambda (x)
			  (f ((lambda (f) f) x)))))

;;final result
(define one (lambda (f) (lambda (x) (f x))))

(define two (add-1 one))

(define two (lambda (f) (lambda (x) (f ((one f) x)))))

(define two (lambda (f) (lambda (x)
			  (f ((lambda (x) (f x)) x)))))

;;final result
(define two (lambda (f) (lambda (x) (f (f x)))))

(define +
  (lambda (m)
    (lambda (n)
      (lambda (f)
	(lambda (x)
	  (m f (n f x)))))))
