(define (sqrt-iter guess x)
  (if (good-enough? guess x)
     guess
     (sqrt-iter (improve guess x)
               x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

  (define (good-enough2? oldguess newguess)
    (> 0.01
      (/ (abs (- newguess oldguess)) 
        oldguess)))

(define (sqrt-iter2 guess x) 
  (if (good-enough2? guess (improve guess x))
    (improve guess x)
    (sqrt-iter2 (improve guess x) 
      x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt2 x) 
  (sqrt-iter2 1.0 x))

(sqrt 9)