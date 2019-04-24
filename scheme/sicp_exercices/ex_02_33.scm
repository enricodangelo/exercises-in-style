(define (accumulate op initial sequence)
    (cond
        ((null? sequence) initial)
        (else (op (car sequence) (accumulate op initial (cdr sequence))))
    )
)

(define (mymap p sequence)
    (accumulate (lambda (x y) (cons (p x) y)) 
                null sequence)
)

(define (myappend seq1 seq2)
    (accumulate cons seq2 seq1)
)

(define (mylength sequence)
    (accumulate (lambda (head tail) (+ 1 tail)) 0 sequence)
)
