;;; Exercise 1.11
(define (f-rec n)
  (if (less-than-tree? n)
      n
      (+ (f-rec (- n 1))
         (* 2 (f-rec (- n 2)))
         (* 3 (f-rec (- n 3))))))

(define (f-iter n)
  (f-iter-aux))

(define (less-than-tree? n)
  (< n 3))

 (define (f-iter n) 
   (define (f-iter-aux a b c count) 
     (cond ((less-than-tree? n) n) 
           ((<= count 0) a) 
           (else (f-iter-aux (+ a (* 2 b) (* 3 c)) a b (- count 1)))))
   (f-iter-aux 2 1 0 (- n 2))) 
