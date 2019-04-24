(define (center x)
    (/
	(+ (lower-bound x) (upper-bound x))
	2))

(define (div-interval x y)
    (cond
        ((= (center y) 0) (error "division by 0"))
        (else (mul-interval
                x
                (make-interval (/ 1.0 (upper-bound y)) (/ 1.0 (lower-bound y)))))))
