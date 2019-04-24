; TETA n steps, TETA n spazio
(define (exp-rec x n)
    (cond
        ((= n 0) 1)
        (else (* x (exp-rec x (- n 1))))
    )
)

; TETA n steps, TETA 1 spazio
(define (exp-ite x n)
    (define (exp-ite-aux x n acc)
        (cond
            ((= n 0) acc)
            (else (exp-ite-aux x (- n 1) (* x acc)))
        )
    )

    (exp-ite-aux x n 1) 
)

; TETA log(n) steps, TETA log(n) spazio 
(define (exp-tree x n)
    (cond ((= n 0) 1)
          ((even? n) (expt (exp-tree x (/ n 2)) 2))
          (else (* x (exp-tree x (- n 1))))
    )
)
