(define (f n)
    (if (< n 3) 
        n
        (+ (f (- n 1))
           (* 2 (f (- n 2)))
           (* 3 (f (- n 3)))
        )
    )
)

 (define (f n) 
   (define (iter a b c count) 
     (if (= count 0) 
       a 
       (iter b c (+ c (* 2 b) (* 3 a)) (- count 1)))) 
   (iter 0 1 2 n)) 

    n = 1
    (iter 1 2 4 0)
    1

    n = 2
    (iter 1 2 4 1)
    (iter 2 4 11 0)
    2

    n = 3
    (iter 1 2 4 2)
    (iter 2 4 11 1)
    (iter 4 11 25 0)
    4

    n = 4
    (iter 1 2 4 3)
    (iter 2 4 11 2)
    (iter 4 11 25 1)
    (iter 11 25 59 0)
    25

        