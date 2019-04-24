;Costruttore di un razionale
(define (make-rat x y)
    (cons x y))

;Massimo comun divisore tra 2 numeri
(define (gcd x y)
    (cond ((= x 0) y)
          (else (gcd y (modulo x y)))))

;Costruttore di un razionale con riduzione ai minimi termini
(define (make-rat-gcd x y)
    (let ((g (gcd x y)))
    (make-rat (/ x g)
              (/ y g))))

;Costruttore di un razionale con normalizzazione del segno
(define (make-rat-norm x y)
    (cond ((< y 0) (make-rat-gcd (- x) (- y)))
          (else (make-rat-gcd x y))))

;Selettore del numeratore
(define (numer x)
    (car x))

;Selettore del denominarote
(define (denom x)
    (cdr x))

;PrettyPrint di un razionale
(define (print-rat x)
    (newline)
    (display (numer x))
    (display "/")
    (display (denom x))
    (newline))

(define (add-rat x y)
    (make-rat (+ (* (numer x) (denom y))
                 (* (numer y) (denom x)))
              (* (denom x) (denom y))))

(define (sub-rat x y)
    (make-rat (- (* (numer x) (denom y))
                 (* (numer y) (denom x)))
              (* (denom x) (denom y))))

(define (mul-rat x y)
    (make-rat (* (numer x) (numer y))
              (* (denom x) (denom y))))

(define (div-rat x y)
    (make-rat (* (numer x) (denom y))
              (* (numer y) (denom x))))

(define (equal-rat x y)
    (= (* (numer x) (denom y))
       (* (numer y) (denom x))))
