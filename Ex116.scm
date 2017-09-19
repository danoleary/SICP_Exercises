(define (even? n)
  (= (remainder n 2) 0))


(define (exp b n)
  (define (iter a b n)
    (cond ((= n 0) a)
        ((even? n) (iter a (square b) (/ n 2)))
        (else (iter (* a b) b (- n 1)))
    )
  )
  (iter 1 b n)
)

(iter 1 2 5)
(iter 2 2 4)
(iter 2 4 2)
(iter 2 16 1)
(iter 32 16 0)

