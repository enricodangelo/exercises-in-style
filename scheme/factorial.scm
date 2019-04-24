(define (factorial n) (fact-iter 1 1 n))

(define (fact-iter product counter max-count)
  (if (> counter max-count)
        product
        (fact-iter (* product counter) (+ counter 1) max-count)))

(define (factorial2 n) 
    (define (fact-iter product counter)
        (if (> counter n)
            product
            (fact-iter (* product counter) (+ counter 1))
        )
    )
    (fact-iter 1 1)
)
