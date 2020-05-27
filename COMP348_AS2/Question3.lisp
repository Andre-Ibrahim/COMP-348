(defun remove_lists (lst);remove nested lists
  (cond (
        (null lst) '();Condition one is when list is empty
        )
        (
        (numberp (car lst)) ;If head of list is an atom
        (cons (car lst) (remove_lists (cdr lst)));creates list with atom as head and recursively calls flatten2 on tail
        )                                   
        (
        (listp (car lst));true condition, this measn if head is a list it goes here
        (append (remove_lists (car lst)) (remove_lists (cdr lst)));flattens the head of list with the flattern tail
        )
        (
        t
        (remove_lists (cdr lst))
        )                                               
    )
)
(defun remove_dups (lst);remove all duplicates
    (cond (
        (null lst) '();null list condition, base
        )
        (
        (member (car lst) (cdr lst)) ;if head is also in list, it will do the following condition
        (cons (car lst) (remove_dups (del_extra_elem (cdr lst) (car lst))));uses helper method to delete extra elements while keeping order
        )
        (
        t ;else condition
        (cons (car lst) (remove_dups(cdr lst))); will leave head and repeat method on tail
        )
    )
)

(defun del_extra_elem (lst elem);remove specific duplicate elem
   (cond(
        (null lst) '()
        )
        (
        (equal elem (car lst)); loops the list and deletes all elements that repeat
        (del_extra_elem (cdr lst) elem)
        )
        (
        t
        (cons (car lst) (del_extra_elem (cdr lst) elem));if head is not the same as elem, it keeps it
        )
        
   )
)

(defun flatten (lst);calling the helper methods
    (remove_dups (remove_lists lst))
)
        

(print (flatten '(1 3 ((4 1) a 5.6))))        
(print (flatten '(1 2 (3 1) (a 2.5) (2 4.5) ((1 2)))))









