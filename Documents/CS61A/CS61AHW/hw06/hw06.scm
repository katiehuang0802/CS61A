;;;;;;;;;;;;;;;
;; Questions ;;
;;;;;;;;;;;;;;;

; Scheme

(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  (car (cdr s))
)

(define (caddr s)
  (car (cddr s))
)

(define (sign x)
  (if (equal? x 0)
      0
      (if (> x 0)
          1
          -1))
)

(define (square x) (* x x))

(define (pow b n)
  (if (= n 0)
      1
      (if (even? n)
      (pow (square b) (/ n 2))
      (* b (pow (square b) (/ (- n 1) 2)))))
)

(define (unique s)
  (if (null? s)
      nil
      (cons (car s) (filter (lambda (x) (not (equal? x (car s)))) (unique (cdr s)))))
)
