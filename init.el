;; Save here instead of littering current directory with emacs backup files
(setq backup-directory-alist `(("." . "~/.saves")))

;; Don't display the 'Welcome to GNU Emacs' buffer on startup
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)
(fset 'yes-or-no-p 'y-or-n-p)

(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
(fringe-mode 0)

(defun display-startup-echo-area-message ()
  "If it wasn't for this you'd be GNU/Spammed by now"
  (message ""))

;; Theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/themes")
(setq-default line-spacing 1)
(set-face-attribute 'default nil :height 120)
(load-theme 'term t)

;; Flyspell often slows down editing so it's turned off
(remove-hook 'text-mode-hook 'turn-on-flyspell)

;; User files 
(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
	 user-emacs-directory)
	((boundp 'user-init-directory)
	 user-init-directory)
	(t "~/.emacs.d/")))

(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
    (load-file (expand-file-name file user-init-dir)))

(load-user-file "modeline.el")
(load-user-file "packages.el")
(load-user-file "functions.el")
(load-user-file "keybindings.el")
