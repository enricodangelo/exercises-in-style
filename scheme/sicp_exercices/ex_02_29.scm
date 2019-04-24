(define (make-mobile left right)
    (list left right)
)

(define (make-branch len structure)
    (list len structure)
)

;devo cambiare anche la definizione dei selettori per lavorare con cons anziche' list, poi le altre funzioni rimangono invariate
(define (make-mobile-cons left right)
    (cons left right)
)

(define (make-branch-cons len structure)
    (cons len structure)
)

(define (left-branch mobile)
    (car mobile)
)

(define (right-branch mobile)
    (car (cdr mobile))
)

(define (branch-length branch)
    (car branch)
)

(define (branch-structure branch)
    (car (cdr branch))
)

(define (weight mobile)
    (cond
        ((number? (branch-structure mobile)) (branch-structure mobile))
        (else (total-weight (branch-structure mobile)))
    )
)

(define (total-weight mobile)
    (+
        (weight (left-branch mobile))
        (weight (right-branch mobile ))
    )
)

(define (torque branch)
    (* (branch-length branch) (branch-structure branch))
)

(define (islastbranch? branch)
    (cond
        ((number? (branch-structure branch)) #t)
        (else #f)
    )
)

(define (isbalanced? mobile)
    (cond
        ((and (islastbranch? (left-branch mobile)) (islastbranch? (right-branch mobile))) (= (torque (left-branch mobile)) (torque (right-branch mobile))))
        ((islastbranch? (left-branch mobile)) (isbalanced? (right-branch mobile)))
        ((islastbranch? (right-branch mobile)) (isbalanced? (left-branch mobile)))
        (else (and
                    (isbalanced? (left-branch (branch-structure mobile)))
                    (isbalanced? (right-branch (branch-structure mobile)))))
    )
)
