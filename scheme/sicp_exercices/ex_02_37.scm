(define (accumulate op initial sequence)
    (if (null? sequence) initial
      (op (car sequence) (accumulate op initial (cdr sequence)))))

(define (accumulate-n op init seqs)
    (cond
        ((null? (car seqs)) null)
        (else (cons
                    (accumulate op init (map (lambda (x) (car x)) seqs))
                    (accumulate-n op init (map (lambda (x) (cdr x)) seqs))
                ))
    )
)

(define (dot-product v w)
    (accumulate + 0 (map * v w))
)

(define (matrix-*-vector m v)
    (map ⟨??⟩ m)
)

(define (transpose mat)
    (accumulate-n ⟨??⟩ ⟨??⟩ mat)
)

(define (matrix-*-matrix m n)
    (let ((cols (transpose n)))
        (map ⟨??⟩ m)
    )
)
