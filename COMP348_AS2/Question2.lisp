
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

    (cons  x  (list y))
    


)
(print (reverse-cut-in-half '(2 2 3)))

(print (reverse-cut-in-half '((1) (2) (3) (4))))