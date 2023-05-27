#lang racket
; defines
(define square (lambda (x)
                 (* x x)))

(define average (lambda (x y)
                  (/ (+ x y) 2)))

(define average-of-squares (lambda (x y)
                             (average (square x)
                                      (square y))))

;; main process
(average-of-squares 2 3)