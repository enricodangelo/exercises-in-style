(define (same-parity2 x . args)
    (define (same-parity-aux l answer)
        (cond
            ((null? l) answer)
            ((= (modulo x 2) (modulo (car l) 2)) (append (car l) (same-parity-aux (list (cdr l)))))
            (else (same-parity-aux (cdr l)))))
    (same-parity-aux args (list x)))



(define (same-parity a . z)
    (define (iter items answer)
        (if (null? items) answer
            (iter (cdr items)
                  (if (= (remainder (car items) 2) (remainder a 2)) (append answer (list (car items)))
                    answer))))
        (iter z (list a)))
