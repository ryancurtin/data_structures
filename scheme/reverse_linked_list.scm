;; Linked lists are (sort of) native to Scheme

(define nil ())

;; Reversing list recursively
(define (reverse-list l)
  (if (null? l) nil
    (append (reverse-list (cdr l)) (list (car l)))))