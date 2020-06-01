(defun flatten (lst);remove nested lists
  (cond (
        (null lst) '();Condition one is when list is empty
        )
        (
        (numberp (car lst)) ;If head of list is an atom
        (cons (car lst) (flatten (cdr lst)));creates list with atom as head and recursively calls flatten2 on tail
        )                                   
        (
        (listp (car lst));true condition, this measn if head is a list it goes here
        (append (flatten (car lst)) (flatten (cdr lst)));flattens the head of list with the flattern tail
        )
        (
        t
        (flatten (cdr lst))
        )                                               
    )
)




(defun reverse-cut-in-half (list); method from Q2 with minor modifications
    (setq y '())
    (setq x '())
    
    (setq len (length list))
    (dotimes (i len)
        (if (< i (floor(/ len 2)))
            (setq y (append  y (list(car list)) ))  
            (setq x (append  x  (list(car list))))
                  
        )

        (setq list (cdr list))
    )
    (setq s1 (length (flatten x)))
    (setq s2 (length (flatten y)))
    (equalp s1 s2)
    


)

(defun shorten-list (lst) 
    (setq y '())
    (setq x '())
    
    (setq len (length lst))
    (dotimes (i len)
        (if (equal i (floor(/ len 2)));since it's odd, the middle element will
        ();Be ignored
            (if (< i (floor(/ len 2)));else it will do reverse method
            (setq y (append  y (list(car lst)) ))  
            (setq x (append  x  (list(car lst))))
                  
        )
        )
        

        (setq lst (cdr lst));shortens list
    )
    (setq s1 (length (flatten x)));calls flatten method from q3
    (setq s2 (length (flatten y)))
    (equalp s1 s2);returns true if length is equal
)



(defun balancedp (lst)
    (setq x '())
    (setq y '())
    (setq len (length lst));sets length of string to len
    (cond (; condition
        (oddp len);if length is odd
        (shorten-list lst); call specific method
        )
        (
        t;else
        (reverse-cut-in-half lst);using method from question 4
        )
    )


)

(print(balancedp '((1 2) (6 6) 5 7 6 (3 6 4))))
(print(balancedp '((1 2) (4 6) 5 6 (3 6 4))))
(print(balancedp '((b 2) (4 6) 5 7 6 (3 (6) 7 4))))
(print(balancedp '((1 2) (c 6) (6) a (3 6 4))))


