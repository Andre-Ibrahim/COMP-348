(defun take-n (list n)
	(setq len (length list)) 

	( dotimes (i (- len n) list)
		(setq list (cdr list))
	)
	

)	

(print (take-n '(1 2 3 4 5 6 7) 2))

(print (take-n '(1 2 3 4 5 6 7) 4))

(print (take-n '(1 2 3 4 5 6 7) 10))

(print (take-n '(1 2 3 4 5 6 7) -1))



