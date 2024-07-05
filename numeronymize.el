(defun numeronymize()
  "Abbreviate a word using a numerical contraction or numeronym (e.g. Abbreviating \"enshittification\" as \"e14n\")."
  
  (interactive)
  

  (if mark-active
      (let (
	    (selection (buffer-substring-no-properties (region-beginning) (region-end))))
	(if (= (length selection) 0)
	    (print "nothing selected")
	  (if (string-match "[[:space:]]" selection)
	      (print "selection contains whitespace")
	    (if (< (length selection) 3)
		(print "selection must be longer than 3 characters")
	      (setq numsize  (- (length selection) 2))
	      (setq start (substring selection 0 1))
	      (setq end  (substring selection (- (length selection) 1) (length selection)))
	      (kill-region (region-beginning) (region-end))
	      (insert (concat start (number-to-string numsize) end))
	      
	      )
	    )
	  )
	)
    (print "nothing selected")
    
    )
  )
