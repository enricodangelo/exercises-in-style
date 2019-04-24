(define (mylist-ref l n)
    (if (= n 0) (car l)
        (mylist-ref (cdr l) (- n 1))))

(define (mylength l)
    (if (null? l) 0
        (+ 1 (mylength (cdr l)))))

(define (myappend l1 l2)
    (if (null? l1) l2
        (cons (car l1) (myappend (cdr l1) l2))))
