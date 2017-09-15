(define (even? n)
  (= (remainder n 2) 0))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (even? n)
  (= (remainder n 2) 0))

(define (exp n)
    (define (exp-iter a b n)
        (cond ((= n 0) a)
              ((even? n) (exp-iter (* b (/ n 2)) (* n n) (- n 1)))
              (else (exp-iter (* b (/ n 1)) a (- n 1)))
        )
    )
    (exp-iter 1 b n)
)

(exp-iter 1 2 2)
(exp-iter 2 2 1)

a   b n
1 * 2^2 = 4
4 * b^1 = 4
n = 0 so return a

(bn/2)2 = (b2)n/2

a * b^n is unchanged

a b^n 
a=1,b=2,n=2
2 * 2^2 = 8

a b^n 
a=1,b=2,n=1
a b^1 = 8