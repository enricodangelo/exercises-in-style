(define (scale-tree tree factor)
    (map (lambda (sub-tree)
            (if (pair? sub-tree)
              (scale-tree sub-tree factor)
              (* sub-tree factor)))
         tree))

(define (square n)
    (* n n)
)

(define (square-tree-ite tree)
    (cond
        ((null? tree) null)
        ((number? tree) (* tree tree))
        (else (cons (square-tree-ite (car tree)) (square-tree-ite (cdr tree))))
    )
)

(define (square-tree tree)
    (map
        (lambda (sub-tree)
            (cond
                ((pair? sub-tree) (square-tree sub-tree))
                (else (* sub-tree sub-tree))
            )
        )
        tree)
)
