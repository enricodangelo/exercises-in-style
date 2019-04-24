(define (myequal? x y)
    (cond
        ((and (null? x) (null? y)) #t)
        ((and (pair? x) (pair? y)) (and (myequal? (car x) (car y)) (myequal? (cdr x) (cdr y))))
        (else (eq? x y))
    )
)
