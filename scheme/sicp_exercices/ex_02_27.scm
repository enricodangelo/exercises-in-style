;(define (deep-reverse l)
;    (cond
;        ((null? cdr l) (car l))
;        ((list? l) (list (deep-reverse (cdr l) (deep-reverse (car l)))))
;       ()
;        ))

(define (reverse1 l)
    (cond
        ((null? l) null)
        (else (append (reverse1 (cdr l)) (list (car l))))
    )
)

(define (deep-reverse l)
    (cond
        ((null? l) null)
        (else (append (deep-reverse (cdr l)) (deep-reverse (list (car l)))))
    )
)
