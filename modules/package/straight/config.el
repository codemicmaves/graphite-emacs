(defmacro graphite/after (packages &rest body)
  "Execute `body' only if `packages' is available."
  `(let ((execute? ,(if (listp packages)
			(> (cl-loop for p in packages count (require p nil 'noerror)) 0)
		      (require packages nil 'noerror))))
    (if execute? ,(macroexp-progn body))))




