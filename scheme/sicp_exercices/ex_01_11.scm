(define (f-rec n)
    (cond ((< n 3) n)
        (else (+ (f-rec (- n 1))
                 (* 2 (f-rec (- n 2)))
                 (* 3 (f-rec (- n 3))))
        )
    )
)

; n e count all'interno di f-ite possono essere omesse perche' c'e' n in scope
(define (f-ite n)
    (define (f-ite-aux a b c count)
        (cond
            ((= count 0) a)
            (else (f-ite-aux b c (+ c (* 2 b) (* 3 a)) (- count 1)))
        )
    )

    (f-ite-aux 0 1 2 n)
)
