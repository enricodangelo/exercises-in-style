(define nil '())

(define (subsets s)
    (cond
        ((null? s) (list nil))
        (else 
            (let
                ((rest (subsets (cdr s))))
                            (append rest (map (lambda (x) (cons (car s) x)) rest))
            )
        )
    )
)
