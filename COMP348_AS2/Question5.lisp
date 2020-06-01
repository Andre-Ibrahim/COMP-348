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




(defun reverse-cut-in-half (list)
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
        (if (equal i (floor(/ len 2)))
        ()
            (if (< i (floor(/ len 2)))
            (setq y (append  y (list(car lst)) ))  
            (setq x (append  x  (list(car lst))))
                  
        )
        )
        

        (setq lst (cdr lst))
    )
    (setq s1 (length (flatten x)))
    (setq s2 (length (flatten y)))
    (equalp s1 s2)
)



(defun balancedp (lst)
    (setq x '())
    (setq y '())
    (setq len (length lst))
    (cond (
        (oddp len)
        (shorten-list lst)
        )
        (
        t
        (reverse-cut-in-half lst)
        )
    )


)

(print(balancedp '((1 2) (4 6) 5 7 6 (3 6 4))))



