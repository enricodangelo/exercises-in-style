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
