(define (identity x) x)
(define (inc n) (+ n 1))

(define (itersum term a next b)
    (define (iter a result) 
        (if (> a b) result 
            (iter (next a) (+ result (term a))))) 
    (iter a 0))

(define (sum-integers a b)
    (itersum identity a inc b))
