(define (tree-map f t)
    (map
        (lambda (s)
            (cond
                ((pair? s) (tree-map f s))
                (else (f s))
            )
        )
        t
    )
)

(define (square n)
    (* n n)
)

(define (square-tree tree)
    (tree-map square tree)
)
