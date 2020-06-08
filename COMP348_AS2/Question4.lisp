
(defun hasLeft (Tree)

    (if (not (null (car (cdr Tree))))
        t
    )

)

(defun hasRight (Tree)

    (if (not (null (car (cdr (cdr Tree)))))
        t
    )

)

(defun leftTree (Tree)
    (car (cdr Tree))
)

(defun rightTree (Tree)
     (car (cdr (cdr Tree)))
)


(defun isBinaryTree (Tree)

(defvar isBT t) ; does not overide the existing value so when setq puts the variable to nill it can't change it

;(print (car Tree)) ; test to see the iterations of the nodes in the tree
(cond 
    ( (hasLeft Tree)

    (if (< (car (leftTree Tree)) (car Tree)) ; if the tree has a left tree we check the if the value of the curent node is larger than its left decendent
        (isBinaryTree (leftTree Tree) )      ;  if true we recursively call the method else we don't have to since we know that the tree is an ordered binary tree
        (setq isBT nil)     ;setq is used to overide defvar
        )
        
        )

)

(cond 

    ( (hasRight Tree)

    (if (> (car (rightTree Tree)) (car Tree))   ; same logic but right child node is larger than the current node
        (isBinaryTree (RightTree Tree) )
        (setq isBT nil)
        )
        
        )

)

isBT ; returning the value isBT at the end

)



(print (isBinaryTree '(8 (3 (1 () ()) (6 (4 () ())(7 () ()))) (10 () (13 (12) ()))))) ;test case

(print (isBinaryTree '(8 (9 (1 () ()) (6 (4 () ())(7 () ()))) (10 () (13 (12) ())))))
