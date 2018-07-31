(define (improve y x) 
    (/ (+ (/ x (* y y)) 
    (* 2 y)) 
        3))

(define (good-enough? oldguess newguess)
    (< (/ (abs (- oldguess newguess)) 
        oldguess) 
        0.01))

(define (cube-root1 guess x)
    (if (good-enough? guess (improve guess x))
        (improve guess x)
        (cube-root1 (improve guess x) 
            x)))

(define (cube-root x)
    (cube-root1 1.0 x))

(cube-root 27)

