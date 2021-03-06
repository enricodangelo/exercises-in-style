(define (make-account balance secret-password)
    (define (make-accumulator acc)
    (lambda (x)
            (set! acc (+ acc x))
            acc))

    (define (call-the-cops) "The cops have been caled!")

    (define attempts (make-accumulator 0))

    (define (attempts-made) (attempts 0))

    (define (reset-attempts) (attempts (- (attempts 0)))) 

    (define (is-correct-password? password) 
        (cond 
            ((equal? secret-password password) (reset-attempts) true)
            (else (attempts 1) false))) 

    (define (withdraw amount) 
        (cond
            ((>= balance amount) (set! balance (- balance amount)) balance) 
            (else "Insufficient funds"))) 

    (define (deposit amount)
        (set! balance (+ balance amount))
        balance)

    (define (dispatch password m) 
        (cond 
            ((not (is-correct-password? password)) (if (> (attempts-made) 6)
                                                        (lambda (x) (call-the-cops))
                                                        (lambda (x) "Incorrect password")))
            ((equal? m 'withdraw) withdraw)
            ((equal? m 'deposit) deposit)
            (else (error "Unknown request: MAKE-ACCOUNT" m))))

    dispatch) 
