(define (fringe l)
    (cond
        ((pair? l) (append (fringe (car l)) (fringe (cdr l))))
        (else (list l))
    )
)
