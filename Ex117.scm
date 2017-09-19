(define (double x)
    (* 2 x))

(define (halve x)
    (/ x 2))

(define (even? n)
  (= (remainder n 2) 0))

(define (multiply a b)
    (define (iter total a b )
        (cond ((= b 1) total )
              ((even? b) (iter (+ total (double a)) a (- b 2))
              )
              (else (iter (+ total a) a (- b 1)))
        )   
    )
    (iter 0 a b)
)

(0 6 6)
(iter 12 6 3)
(iter 18 6 2)
(iter 30 6 1)