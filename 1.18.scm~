(define (mul3 b n)
  (mul-iter b n 0))

(define (mul-iter b n a)
  (cond ((= n 0) a)
        ((even? n) (mul-iter (double b) (/ n 2) a))
        ((odd? n) (mul-iter b (- n 1) (+ a b)))))
