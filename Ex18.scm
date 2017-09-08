(define (square x) 
    (* x x))

(define (good-enough? guess previousGuess x)
    (< (abs (- guess previousGuess)) 
        (/ x 1000000)))

(define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess))
        3))

(define (cbrt-iter guess previousGuess x)
    (if (good-enough? guess previousGuess x)
        guess
        (sqrt-iter (improve guess x)
                    guess
                    x)))