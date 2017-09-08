(define (square x) 
    (* x x))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess previousGuess x)
    (< (abs (- guess previousGuess)) 
        (/ x 1000000)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (sqrt-iter guess previousGuess x)
    (if (good-enough? guess previousGuess x)
        guess
        (sqrt-iter (improve guess x)
                    guess
                    x)))