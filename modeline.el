(defun display-startup-echo-area-message ()
  "If it wasn't for this you'd be GNU/Spammed by now"
  (message ""))

(setq-default mode-line-format
	      (list
	       "    "
	       ;; the buffer name; the file name as a tool tip
	       '(:eval (propertize "%b " 'help-echo (buffer-file-name)))
       
	       ;; line and column
	       "(" ;; '%02' to set to 2 chars at least; prevents flickering
	       (propertize "%02l") ","
	       (propertize "%02c")
	       ") "
	       
	       ;; the current major mode for the buffer.
	       "["
	       '(:eval (propertize "%m" 'help-echo buffer-file-coding-system))
	       "] "
	       
	       
	       "[" ;; insert vs overwrite mode, input-method in a tooltip
	       '(:eval (propertize (if overwrite-mode "Ovr" "Ins")
				   'help-echo (concat "Buffer is in "
						      (if overwrite-mode "overwrite" "insert") " mode")))
	       
	       ;; was this buffer modified since the last save?
	       '(:eval (when (buffer-modified-p)
			 (concat ","  (propertize "Mod" 'help-echo "Buffer has been modified"))))
	       
	       ;; is this buffer read-only?
	       '(:eval (when buffer-read-only
			 (concat ","  (propertize "RO" 'help-echo "Buffer is read-only"))))
	       "] "
	       ))

