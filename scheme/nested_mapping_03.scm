(define (enumerate-interval low high)
    (cond
        ((> low high) null)
        (else (cons low (enumerate-interval (+ low 1) high)))
    )
)

(define (accumulate op initial sequence)
    (cond
        ((null?) sequence)
        (else initial (op (car sequence) (accumulate op initial (cdr sequence))))
    )
)

(define (pairs-i-j n)
    (accumulate
        append
        null
        (map
            (lambda (i)
                (map
                    (lambda (j)
                    (list i j))
                    (enumerate-interval 1 (- i 1))
                ))
            (enumerate-interval 1 n)
        )
    )
)
