(define (double x)
    (* 2 x))

(define (halve x)
    (/ x 2))

(define (even? n)
  (= (remainder n 2) 0))

(define (multiply a b)
    (define (iter total a b )
        (cond ((= b 0) total )
              ((even? b) (iter total (double a) (halve b)))
              (else (iter (+ total a) a (- b 1)))
        )   
    )
    (iter 0 a b)
)

(iter 0 10 10)
(iter 0 20 5)
(iter 20 20 4)
(iter 20 40 2)
(iter 20 80 1)
(iter 100 20 0)


(iter 0 7 7)
(iter 7 7 6)
(iter 7 14 3)
(iter 21 14 2)
(iter 21 28 1)
(iter 49 21 0)
