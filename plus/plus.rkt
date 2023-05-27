#lang racket

(define (inc x)
  (+ x 1))
(define (dec x)
  (- x 1))

(define plus-iter
  (λ (a b)
    (if (= a 0)
        b
        (plus-iter (dec a)
                   (inc b)))))

(define plus-rec
  (λ (a b)
    (if (= a 0)
        b
        (inc (plus-rec
              (dec a) b)))))

(plus-iter 12 21)
(plus-rec 12 21)