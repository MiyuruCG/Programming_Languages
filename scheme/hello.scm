
; scheme --load hello.scm

(define (cal x)
    (+ x x))

(define (squ x) (* x x))

(define (abs x) 
    (if (< x 0)
        (- x)
        x))


(define (double value) (* 2 value))

(define (apply-twice fn value) (fn(fn value)))