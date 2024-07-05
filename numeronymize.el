(defun numeronymize()
  "Abbreviate a word using a numerical contraction or numeronym (e.g. Abbreviating \"enshittification\" as \"e14n\")."
  
  (interactive)
  

  (if mark-active
      (let (
	    (selection (buffer-substring-no-properties (region-beginning) (region-end))))
	(if (= (length selection) 0)
	    (print "nothing selected")
	  (if (string-match "[[:space:]]" selection)
	      (if (y-or-n-p "This selection contains whitespace characters. Do you want to continue?")
		  (n10e-abbreviate selection)
		(print "No action taken.")
		)
	    (n10e-abbreviate selection)
	    )
	  )
	)
    (print "nothing selected")
    )
  )

(defun n10e-abbreviate (x)
   (if (< (length x) 3)
       (print "selection must be longer than 3 characters")
     (setq numsize  (- (length x) 2))
     (setq start (substring x 0 1))
     (setq end  (substring x (- (length x) 1) (length x)))
     (kill-region (region-beginning) (region-end))
     (insert (concat start (number-to-string numsize) end))))
   
