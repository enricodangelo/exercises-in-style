(define (accumulate op initial sequence)
    (cond
        ((null? sequence) initial)
        (else (op (car sequence) (accumulate op initial (cdr sequence))))
    )
)
