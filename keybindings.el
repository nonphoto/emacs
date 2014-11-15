(define-key input-decode-map "\e\eOA" [(meta up)])
(define-key input-decode-map "\e\eOB" [(meta down)])

(global-set-key (kbd "M-<down>") 'move-line-down)
(global-set-key (kbd "M-<up>") 'move-line-up)

(global-set-key (kbd "M-j")
		(lambda ()
		  (interactive)
		  (join-line -1)))
