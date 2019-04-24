(define (make-accumulator value)
  (lambda (n)
    (begin
      (set! value (+ value n))
      value)))
