;Q1 10 Points
(define (Ackermann s t) ; size n problem
  (if (= s 0); the stopping condition
      (+ t 1) ;return t + 1
      (if (and (= t 0) (> s 0)) ; construct the size n problem from the size m problems
          (Ackermann (- s 1) 1) 
          (Ackermann (- s 1) (Ackermann s (- t 1))) ; size m problems
          )
      )
  )
(display "Q1 TESTING (10 pts)") (newline)
(display "(Ackermann 0 0) : correct answer = 1 : program's answer = ") (Ackermann 0 0)
(display "(Ackermann 1 1) : correct answer = 3 : program's answer = ")(Ackermann 1 1)
(display "(Ackermann 2 3) : correct answer = 9 : program's answer = ")(Ackermann 2 3)
(display "(Ackermann 3 4) : correct answer = 125 : program's answer = ")(Ackermann 3 4)
(display "(Ackermann 3 7) : correct asnwer = 1021 : program's answer = ")(Ackermann 3 7)

;Q2 4 Points
(define (combine-four lst1 lst2 lst3 lst4)
  (append
   (append lst1 lst2)
   (append lst3 lst4)
   )
  )
(newline)
(display "Q2 TESTING (4 pts)")(newline)
(display "(combine-four '(1 2) '(3 4) '(5 6) '(7 8 9)) : correct answer = (1 2 3 4 5 6 7 8 9) : program's answer = ")
(combine-four '(1 2) '(3 4) '(5 6) '(7 8 9))

;Q3 6 Points
(define (last-n lst n)
  (if (= (length lst) n) ;stopping condition
      lst 
      (last-n (cdr lst) n) ;formulate size n from n-1 problem
      )
  )

(newline)
(display "Q3 TESTING (6 pts)")(newline)
(display "(last-n '(1 6 3 4 5) 2) : correct answer = (4 5) : program's answer = ")(last-n '(1 6 3 4 5) 2)
(display "nameless function : correct answer = (4 5) : program's answer = ")((lambda (lst n)
   (if (= (length lst) n)
       lst
       (last-n (cdr lst) n)
       )
   )
 '(1 6 3 4 5) 2)

;Q4 5 Points
(define (first-n lst1)
  (let ((input (read)))
    (((lambda (x) (x x)) ; wrote a nameless helper functions to solve recursively
      (lambda (first-n-helper)
        (lambda (lst n)
          (if (= n 0)
              '()
              (cons (car lst) ((first-n-helper first-n-helper) (cdr lst) (- n 1)))
              ))))
     lst1 input)
    )
  )

(newline)
(display "Q4 TESTING (5 pts)")(newline)
(display "(first-n '(1 5 3 4 5) with read in input of 3 : correct answer = (1 5 3)") (newline)
(first-n '(1 5 3 4 5))


;Q5 10 Points
(define (shuffle lst1 lst2)
  (if (= (length lst1) 0)
      '()
      (cons (car lst1) (cons (car lst2) (shuffle (cdr lst1) (cdr lst2))))
      )
  )
(newline)
(display "Q5 TESTING (10 pts)")(newline)
(display "(shuffle '(1 2 3) '(a b c)) : correct answer = (1 a 2 b 3 c) : program's answer = ")
(shuffle '(1 2 3) '(a b c))

;Q6 5 Points
(define (shuffle-pairs lst1 lst2)
  (if (= (length lst1) 0)
      '()
      (cons (cons (car lst1) (car lst2)) (shuffle-pairs (cdr lst1) (cdr lst2)))
      )
  )
(newline)
(display "Q6 TESTING (5 pts)") (newline)
(display "(shuffle-pairs '(1 2 3) '(a b c)) : corrrect answer = ((1 . a) (2 . b) (3 . c)) program's answer = ")
(shuffle-pairs '(1 2 3) '(a b c))

;Q7 10 Points
(define (addSquare lst)
  (if (= (length lst) 0)
      "empty list"
      (addNonEmptyList lst)
      )
  )
(define (addNonEmptyList lst)
  (if (= (length lst) 0)
      0
      (+ (* (car lst) (car lst)) (addNonEmptyList (cdr lst)))
      )
  )

(newline)
(display "Q7 TESTING (10 pts)")(newline)
(display "(addSquare '()) : correct answer = \"empty list\" : program's answer = ")
(addSquare '())
(display "(addNonEmptyList '()) : correct answer = 0 : program's answer = ")
(addNonEmptyList '())
(display "(addNonEmptyList '(1 2 3) : correct answer = 14 : program's answer = ")
(addNonEmptyList '(1 2 3) )
(display "(addNonEmptyList '(1 4 3 2) : correct answer = 30 : program's answer = ")
(addNonEmptyList '(1 4 3 2) )


             
