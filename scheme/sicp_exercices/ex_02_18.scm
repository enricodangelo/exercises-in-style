(define (myreverse l)
    (cond
        ((null? l) l)
        (else (append (myreverse (cdr l)) (list (car l))))))
