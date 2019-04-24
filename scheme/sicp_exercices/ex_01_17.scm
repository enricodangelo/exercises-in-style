(define (fast-mult a b)
    (cond
        ((= b 0) 0)
        ((even? b) (double (fast-mult a (halve b))))
        (else (+ a (fast-mult a (- b 1))))
    )
)

(define (halve x)
    (/ x 2)
)

(define (double x)
    (* x 2)
)
