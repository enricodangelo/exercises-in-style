(define (list-to-n n)
    (define (list-to-n-aux x n)
        (cond
            ((= x n) (cons x null))
            (else (cons x (list-to-n-aux (+ x 1) n)))
        )
    )
    (list-to-n-aux 1 n)
)

(define (list-to-n-plus-i i n)
    (define (list-to-n-plus-i-aux i x n)
        (cond
            ((= x n) (cons (cons i x) null))
            (else (cons (cons i x) (list-to-n-plus-i-aux i (+ x 1) n)))
        )
    )
    (list-to-n-plus-i-aux i 1 n)
)

(define (pairs-to-n n)
    (define (pairs-to-n-aux x n)
        (cond
            ((= x n) (list-to-n-plus-i x n))
            (else (append (list-to-n-plus-i x n) (pairs-to-n-aux (+ x 1) n)))
        )
    )
    (pairs-to-n-aux 1 n)
)

(define (pairs-to-n-j-less-i n)
    (filter (lambda (x) (< (cdr x) (car x))) (pairs-to-n n))
)

(define (smallest-divisor n)
    (find-divisor n 2)
)

(define (square n)
    (* n  n)
)

(define (find-divisor n test-divisor)
    (cond 
        ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))
    )
)

(define (divides? a b)
    (= (remainder b a) 0)
)
 
(define (prime? n)
    (= n (smallest-divisor n))
)


(define (pairs-to-n-j-less-i-sum-prime n)
    (filter (lambda (x) (prime? (+ (car x) (cdr x)))) (pairs-to-n-j-less-i n))
)
