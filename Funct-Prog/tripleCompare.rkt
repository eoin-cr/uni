#lang racket
(define tripleCompare (lambda (x y z)
                          (cond ((not (number? z)) (if (> x y) y x))
                                ((> x y) (tripleCompare y z "n"))
                                ((< x y) (tripleCompare x z "n"))
                                )
                          )
    )
