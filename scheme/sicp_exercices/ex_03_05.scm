(define (random-in-range low high)
  (let ((range (- high low)))
    (+ low (random range))))

(define (monte-carlo trials experiment)
  (define (iter trials-remaining trials-passed)
    (cond ((= trials-remaining 0)
           (/ trials-passed trials))
          ((experiment)
           (iter (- trials-remaining 1)
                 (+ trials-passed 1)))
          (else
            (iter (- trials-remaining 1)
                  trials-passed))))
  (iter trials 0))

 (define (P x y)
   (< (+ (expt (- x 5) 2) 
         (expt (- y 7) 2)) 
      (expt 3 2)))

(define (estimate-integral proc x1 y1 x2 y2 trials)
  (monte-carlo trials (proc (random-in-range x1 x2) (random-in-range y1 y2))))
