     1
    1 1
   1 2 1
  1 3 3 1
 1 4 6 4 1

(define (pascal r c)
    (cond ((< r 2) 1)
          ((= c 0) 1)
          ((= c r) 1)
          (else ( + 
                    (pascal (- r 1) (- c 1)) 
                    (pascal (- r 1) c)
                )
          )
    )
)