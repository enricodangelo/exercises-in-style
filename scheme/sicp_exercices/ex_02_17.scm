(define (last-pair l)
    (cond
        ((null? (cdr l)) (car l))
        (else (last-pair (cdr l)))))
