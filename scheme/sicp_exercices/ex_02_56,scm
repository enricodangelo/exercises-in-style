;(variable? e)          Is e a variable?
(define (variable? x)
    (symbol? x)
)

;(same-variable? v1 v2) Are v1 and v2 the same variable?
(define (same-variable? v1 v2)
    (and
        (variable? v1)
        (variable? v2)
        (eq? v1 v2))
)

(define (exponentiation? x)
    (and
        (pair? x)
        (eq? (car x) '**))
)

(define (base e)
    (cadr e)
)

(define (exponent e)
    (caddr e)
)

;(define (make-exponentiation base exponent)
;    (list '** base exponent)
;)
(define (make-exponentiation base exp)
    (cond
        ((=number? base 1) 1)
        ((=number? exp 1) base)
        ((=number? exp 0) 1)
        (else (list '** base exp))
    )
)

;(sum? e)               Is e a sum?
(define (sum? x)
    (and
        (pair? x)
        (eq? (car x) '+))
)

;(addend e)             Addend of the sum e.
(define (addend s)
    (cadr s)
)

;(augend e)             Augend of the sum e.
(define (augend s) 
    (caddr s)
)

;(make-sum a1 a2)       Construct the sum of a1 and a2.
;(define (make-sum a1 a2)
;    (list '+ a1 a2)
;)
(define (make-sum a1 a2)
    (cond
        ((=number? a1 0) a2)
        ((=number? a2 0) a1)
        ((and
            (number? a1)
            (number? a2)) (+ a1 a2))
        (else (list '+ a1 a2))
    )
)

(define (=number? expr num)
    (and 
        (number? expr)
        (= expr num))
)


;(product? e)           Is e a product?
(define (product? x)
    (and
        (pair? x)
        (eq? (car x) '*))
)

;(multiplier e)         Multiplier of the product e.
(define (multiplier p) 
    (cadr p)
)

;(multiplicand e)       Multiplicand of the product e.
(define (multiplicand p) 
    (caddr p)
)

;(make-product m1 m2)   Construct the product of m1 and m2.
;(define (make-product m1 m2) 
;    (list '* m1 m2)
;)
(define (make-product m1 m2)
    (cond
        ((or
           (=number? m1 0) 
           (=number? m2 0)) 0)
        ((=number? m1 1) m2)
        ((=number? m2 1) m1)
        ((and
            (number? m1)
            (number? m2)) (* m1 m2))
        (else (list '* m1 m2))
    )
)

(define (deriv expr var)
    (cond
        ((number? expr) 0)
        ((variable? expr) (if (same-variable? expr var) 1 0))
        ((sum? expr) (make-sum
                        (deriv (addend expr) var)
                        (deriv (augend expr) var)))
        ((product? expr) (make-sum 
                            (make-product 
                                (multiplier expr)
                                (deriv (multiplicand expr) var))
                            (make-product 
                                (deriv (multiplier expr) var)
                                (multiplicand expr))))
        ((exponentiation? expr) (make-product
                                    (make-product
                                        (exponent expr)
                                        (make-exponentiation
                                            (base expr)
                                            (make-sum (exponent expr) -1)))
                                    (deriv (base expr) var)))
        (else (error "unknown expression type: DERIV" expr))
    )
)
