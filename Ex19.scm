(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

(inc (+ (dec a) b))
(inc (+ (dec 4) 5))

(inc (+ 3 5))
(inc (inc (+ 2 5)))
(inc (inc (inc (+ 1 5))))
(inc (inc (inc (inc (+ 0 5)))))
(inc (inc (inc (inc 5))))
(inc (inc (inc 6)))
(inc (inc 7))
(inc 8)
9

(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

(+ (dec a) (inc b))

(+ 4 (inc 5))
(+ 3 (inc (inc 5)))
(+ 2 (inc (inc (inc 5))))
(+ 1 (inc (inc (inc (inc 5)))))
(+ 0 (inc (inc (inc (inc (inc 5))))))
(inc (inc (inc (inc 5))))
(inc (inc (inc 6)))
(inc (inc 7))
(inc 8)
9

both recursive
