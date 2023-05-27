#lang racket
(define (perfect-try? x try)
  (if (and (> (+ (* try try try) 0.001)
              x)
           (< (- (* try try try) 0.001)
              x))
      #t
      #f))
(define (new-perfect? try past-try)
  (if (and (> (+ try 0.001)
              past-try)
           (< (- try 0.001)
              past-try))
      #t
      #f))

(define (upgrade-try x try)
  (/ (+ (* try 2)
        (/ x
           (* try try)))
     3))

(define (koren-cube x try)
  (if (perfect-try? x try)
      try
      (koren-cube x
            (upgrade-try x try))))
(define (new-koren-cube x try past)
  (if (new-perfect? try past)
      try
      (new-koren-cube x
                 (upgrade-try x try)
                 try)))
(koren-cube 27 1)
(new-koren-cube 27 1 2)