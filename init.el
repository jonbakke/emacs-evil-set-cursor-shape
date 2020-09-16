(if (not (display-graphic-p))
  (progn
    (add-hook 'evil-after-load-hook
      (lambda () "Change cursor to underline"
			  (interactive)
			  (send-string-to-terminal "\033[4 q")))
	  (add-hook 'evil-normal-state-entry-hook
		  (lambda () "Change cursor to underline"
			  (interactive)
			  (send-string-to-terminal "\033[4 q")))
	  (add-hook 'evil-insert-state-entry-hook
		  (lambda () "Change cursor to vertical bar"
		  	(interactive)
		  	(send-string-to-terminal "\033[6 q")))
	  (add-hook 'evil-emacs-state-entry-hook
	    (lambda () "Change cursor to block"
	  		(interactive)
	  		(send-string-to)-terminal "\033[2 q"))))
