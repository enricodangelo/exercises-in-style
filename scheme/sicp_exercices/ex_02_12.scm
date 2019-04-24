(define (make-interval a b) (cons a b))

(define (lower-bound x)
    (car x))

(define (upper-bound x)
    (cdr x))

(define (center x)
    (/
        (+ (lower-bound x) (upper-bound x))
        2))

(define (width x)
    (/ 
        (- (upper-bound x) (lower-bound x)) 
        2))

(define (make-center-percent c p)
    (make-interval (* c (- 1 p)) (* c (+ 1 p)))

(define (percentage x)
    (/ (* (width x) 100) (center x)))
