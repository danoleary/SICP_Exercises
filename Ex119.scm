 (define (fib n) 
   (fib-iter 1 0 0 1 n)) 
 (define (fib-iter a b p q count) 
   (cond ((= count 0) b) 
         ((even? count) 
          (fib-iter a 
                    b 
                    (+ (* b q) (* a q) (* a p)) 
                    (+ (* b p) (* a q)) 
                    (/ count 2))) 
         (else (fib-iter (+ (* b q) (* a q) (* a p)) 
                         (+ (* b p) (* a q)) 
                         p 
                         q 
                         (- count 1))))) 

                
a' = qb + a(p + q)
b' = pb + qa

a'' = (+ (* (pb + qa) q) (* (qb + a(p + q)) q) (* (qb + a(p + q)) p))   
b'' = ppb + pqa qqb + qap + qqa     