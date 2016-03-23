(define (expt b n)
  (if (= n 0) 1 (* b (expt b (- n 1)))))

(define (expt2 b n) (expt-iter b n 1))
(define (expt-iter base counter production)
  (if (= counter 0)
      production
      (expt-iter base (- counter 1) (* base production))))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n)
         (square (fast-expt b (/ n 2))))
        (else
         (* b (fast-expt b (- n 1))))))

(define (even? n)
  (= (remainder n 2) 0))

(define (square x) (* x x))

