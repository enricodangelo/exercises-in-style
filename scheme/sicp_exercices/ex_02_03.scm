;; Punto
(define (make-point x y)
    (cons x y))

(define (x-point p)
    (car p))

(define (y-point p)
    (cdr p))

(define (print-point p)
    (newline)
    (display "(")
    (display (x-point p))
    (display ",")
    (display (y-point p))
    (display ")"))

; Rect: punto in alto a sinistra e in basso a destra
(define (make-rect p1 p2)
    (cons p1 p2))

(define (top-left s)
    (car s))

(define (bottom-right s)
    (cdr s))

; Rect: punto in alto a sinistra, altezza e larghezza
(define (make-rect-2 p lato-x lato-y)
    (cons p cons(lato-x lato-y)))

; Ineterfaccia prima implementazione
(define (lato-x r)
    (- (x-point (bottom-right r)) (x-point (top-left r))))

(define (lato-y r)
    (- (y-point (bottom-right r)) (y-point (top-left r))))

; Interfaccia seconda implementazione
(define (lato-x2 r)
    (car (cdr r)))

(define (lato-y2 r)
    (cdr (cdr r)))

; Perimetro e area delle 2 implementazioni, cambiano solo per quale lato-{x|y} invocano. In pratica posso cambiare le due implementazioni e lasciare invariate queste funzioni (a patto di avere una sola implementazione que ed eliminare il clash sui nomi di funzione)
(define (perimeter r)
  (+ (* (lato-x r) 2)
     (* (lato-y r) 2)))

(define (area r)
    (* (lato-x r)
       (lato-y r)))

(define (perimeter2 r)
  (+ (* (lato-x2 r) 2)
     (* (lato-y2 r) 2)))

(define (area2 r)
    (* (lato-x2 r)
       (lato-y2 r)))
