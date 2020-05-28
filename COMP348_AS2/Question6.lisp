(defun trianglep(x &optional (y x))

   ( cond
        ((zerop y) t)
        ((zerop x) (format t "~%") (trianglep (- y 1) (- y 1)))
        (t (format t "* " ) (trianglep (- x 1) y) )
    )
)

(defun trianglen(x &optional (y x))
(defvar s 0)
(cond
    ((zerop y) t)
    ((zerop x) (format t "~%") (setq s (+ s 1))(dotimes (x s) (format t "  ")) (trianglen (+ y 1) (+ y 1)) )

        (t (format t "* " ) (trianglen (+ x 1) y) )
    



)


)

(defun triangle(x)
    (cond
        ((not (integerp x)) (format t "please enter an integer"))
        ((> x 0) (trianglep x))
        ((< x 0) (trianglen x))
        
    )

)

(triangle -5)