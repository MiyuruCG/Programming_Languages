
(define maplist (list 1 3 5 9))

(define (double x) (* 2 x))
; (map double maplist)

; impleme
(define null ())

(define (my-map func lst)
    (if (null? lst)
        ()
        (
            cons (func(car lst)) (my-map func (cdr lst))
        )
    )
)

(define (triple x) (* 3 x))

(define (sqr x) (* x x))