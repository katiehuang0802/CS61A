(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))


;; Problem 15
;; Returns a list of two-element lists
(define (enumerate s)
  ; BEGIN PROBLEM 15
   (define (enumerate_helper k s1)
          (if (null? s1)
              s1
              (cons (list k (car s1)) (enumerate_helper (+ k 1) (cdr s1)))))
  (enumerate_helper 0 s))
  ; END PROBLEM 15

;; Problem 16

;; Merge two lists LIST1 and LIST2 according to COMP and return
;; the merged lists.
(define (merge comp list1 list2)
  ; BEGIN PROBLEM 16
    (cond
    ((null? list1) list2)
    ((null? list2) list1)
    (else
      (if
      (comp (car list1) (car list2))
      (cons (car list1) (merge comp (cdr list1) list2))
      (cons (car list2) (merge comp (cdr list2) list1))
      ))))
  ; END PROBLEM 16


(merge < '(1 5 7 9) '(4 8 10))
; expect (1 4 5 7 8 9 10)
(merge > '(9 7 5 1) '(10 8 4 3))
; expect (10 9 8 7 5 4 3 1)

;; Problem 17

(define (nondecreaselist s)
    ; BEGIN PROBLEM 17
    (cond ((null? (cdr s)) (cons s nil))
          ((> (car s) (cadr s)) (cons (list (car s)) (nondecreaselist (cdr s))))
    (else
        (cons (cons (car s) (car (nondecreaselist (cdr s)))) (cdr (nondecreaselist (cdr s)))))))
    ; END PROBLEM 17