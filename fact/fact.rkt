#lang racket
(define fact
  (λ (n)
    (if (< n 3)
        n
        (* (fact (- n 1))
           n))))

(define fact-i
  (λ (res i n)
    (if (< n i)
        res
        (fact-i (* i res)
                (+ i 1)
                n))))
(define factorial
  (λ (n)
    (fact-i 1 1 n)))

(fact 5)
(factorial 5)