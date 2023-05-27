#lang racket
(define (perfect-try? x try)
  (if (and (> (+ (* try try) 0.1)
              x)
           (< (- (* try try) 0.1)
              x))
      #t
      #f))
(define (new-perfect? try past-try)
  (if (and (> (+ try 0.1)
              past-try)
           (< (- try 0.1)
              past-try))
      #t
      #f))

(define (upgrade-try x try)
  (/ (+ try
        (/ x
           try))
     2))

(define (koren x try)
  (if (perfect-try? x try)
      try
      (koren x
            (upgrade-try x try))))
(define (new-koren x try past)
  (if (new-perfect? try past)
      try
      (new-koren x
                 (upgrade-try x try)
                 try)))
(koren 36 1)
(new-koren 36 1 2)