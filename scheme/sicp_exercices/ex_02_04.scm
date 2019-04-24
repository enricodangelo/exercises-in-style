; cons return a function that apply m to the parameters p and q
(define (mycons x y) 
    (lambda (m) (m x y)))

; car applies z to a function that given two parameters returns the first
(define (mycar z) 
    (z (lambda (p q) p)))

; cdr applies z to a function that given two parameters returns the second
(define (mycdr z) 
    (z (lambda (p q) q)))
