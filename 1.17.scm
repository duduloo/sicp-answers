(define (mul a b)
  (if (= b 0)
      0
      (+ a (mul a (- b 1)))))

(define (mul2 a b)
  (cond ((= b 0) 0)
        ((even? b)
         (double (mul2 a (/ b 2))))
        (else
         (+ a (mul2 a (- b 1))))))

(define (double x) (+ x x))
