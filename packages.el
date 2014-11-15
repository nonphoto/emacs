(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))

(require 'use-package)

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
(setq ido-create-new-buffer 'always)
(setq ido-decorations (quote ("\n    " "" "\n    " "\n    ..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]")))

(use-package ace-jump-mode
  :ensure ace-jump-mode
  :bind ("C-." . ace-jump-mode))

(use-package smex
  :ensure smex
  :bind (("M-x" . smex)
	 ("M-X" . smex-major-mode-commands)
	 ("C-c C-c M-x" . execute-extended-command))
  :init (progn
	  (smex-initialize)))
		 
	  
