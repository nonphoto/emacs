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

(use-package ace-jump-mode
  :ensure ace-jump-mode
  :bind ("C-c j" . ace-jump-mode))

(use-package smex
  :ensure smex
  :bind (("M-x" . smex)
	 ("M-X" . smex-major-mode-commands)
	 ("C-c C-c M-x" . execute-extended-command))
  :init (progn
	  (smex-initialize)))

(use-package paredit
  :ensure paredit
  :bind(("C-c p". paredit-mode)))

(use-package aggressive-indent
  :ensure aggressive-indent
  :init (progn
	  (global-aggressive-indent-mode)))

(use-package hungry-delete
  :ensure hungry-delete
  :init (progn
	  (global-hungry-delete-mode)))

(use-package expand-region
  :ensure expand-region
  :bind (("M-SPC" . er/expand-region)))

(use-package multiple-cursors
  :ensure multiple-cursors)
