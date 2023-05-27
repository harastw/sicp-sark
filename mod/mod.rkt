#lang racket
(define (abs x)
  (if (< x 0)
      (- x)
      x))

abs

(abs -23)