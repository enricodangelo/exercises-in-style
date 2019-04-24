(define (euclid-GCD a b)
    (cond
        ((= b 0) a)
        (else (euclid-GCD b (remainder a b)))
    )
)
