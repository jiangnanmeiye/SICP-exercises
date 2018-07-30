(define (improve y x) 
    (/ (+ (/ x (* y y)) 
    (* 2 y)) 
        3))

(define (good-enough? oldguess newguess)
    (< (/ (abs (- oldguess newguess)) 
        oldguess) 
        0.01))

(define (cube-root guess x)
    (if (good-enough? guess (improve guess x))
        (improve guess x)
        (cube-root (improve guess x) 
            x)))

(cube-root 1.0 27)

