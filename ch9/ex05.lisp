(defun print-board (x)
  (labels ((nil-as-blank (z)
             (if z z " "))
           (group (z)
             (cond ((null z) nil)
                   (t (cons (list (first z) (second z) (third z))
                      (group (cdddr z))))))
           (print-line (z)
             (format t "~& ~A | ~A | ~A " (first z) (second z) (third z)))
           (print-divider ()
             (format t "~&-----------")))
    (let ((triples (group (mapcar #'nil-as-blank x))))
      (print-line (first triples))
      (print-divider)
      (print-line (second triples))
      (print-divider)
      (print-line (third triples)))))