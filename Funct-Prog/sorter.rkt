#lang racket
;; use the function by doing > (sort '([numbers]))
(define sorter
    (lambda (x)
      (cond ((null? x) '())
            ((null? (cdr x)) x)
            ((< (car x) (second x)) (cons (car x) (sorter (cdr x))))
            (#t (cons (second x) (sorter (cons (car x) (cdr(cdr x))))))
      )
    )
)

(define sort
    (lambda (x)
      (cond ((null? x) '())
            ((equal? x (sorter x)) x)
            (#t (sort (sorter x)))
      )
    )
)
