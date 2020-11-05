; making list-ref


(define mylist(list "a" "b" "c" "d"))

(define (my-list-ref lsn n)
    (if (zero? n)
        (car lsn)
        (my-list-ref (cdr lsn) (- n 1))
    )
)