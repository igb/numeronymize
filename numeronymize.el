(defun numeronymize()
  "Abbreviate a word using a numerical contraction or numeronym (e.g. Abbreviating \"enshittification\" as \"e14n\"."
  
  (interactive)
  

  (if mark-active
      (let (
	    (selection (buffer-substring-no-properties (region-beginning) (region-end))))
	(if (= (length selection) 0)
	    (print "nothing selected")

	  (setq replacement (read-string "'replace' with: "))

	  (if (= (length replacement) 0)
	      (print "no replacement text?")
	    (setq slength  (length selection))
	    (setq count 0)
            (setq acc "")
	    
	    
	    (while (< count slength)
	      (setq acc (concat acc "^H"))
	      (setq count (1+ count)))
	    (kill-region (region-beginning) (region-end))
	    (insert (concat selection acc " " replacement))
	    
	    )
	  )
	)
	(print "nothing selected")
     
    )
  )
