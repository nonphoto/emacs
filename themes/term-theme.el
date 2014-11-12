;; Emacs theme for using terminal colors
(deftheme term)

(let ((background "black")
      (selection "brightblack")
      (foreground "brightwhite")
      (comment "white")
      (red "red")
      (green "green")
      (yellow "yellow")
      (blue "blue")
      (purple "magenta")
      (cyan "cyan")
      (dark-red "brightred")
      (dark-green "brightgreen")
      (dark-yellow "brightyellow")
      (dark-blue "brightblue")
      (dark-purple "brightmagenta")
      (dark-cyan "brightcyan"))
  
  (custom-theme-set-faces 
   'term
   
   `(default ((t (:background ,background :foreground ,foreground))))
   `(fringe ((t (:background ,background))))
   `(minibuffer-prompt ((t (:foreground ,cyan))))
   `(mode-line ((t (:background ,selection :foreground ,comment))))
   `(mode-line-inactive ((t (:background ,selection :foreground ,selection))))
   `(region ((t (:background ,selection))))
   `(vertical-border ((t (:background ,background :foreground ,background))))
   
   `(font-lock-builtin-face ((t (:foreground ,yellow))))
   `(font-lock-comment-face ((t (:foreground ,comment))))
   `(font-lock-constant-face ((t (:foreground ,green))))
   `(font-lock-doc-string-face ((t (:foreground ,comment))))
   `(font-lock-function-name-face ((t (:foreground ,blue))))
   `(font-lock-keyword-face ((t (:foreground ,purple))))
   `(font-lock-string-face ((t (:foreground ,green))))
   `(font-lock-type-face ((t (:foreground ,yellow))))
   `(font-lock-variable-name-face ((t (:foreground ,red))))
   `(font-lock-warning-face ((t (:background ,dark-red :foreground ,red))))
   
   ;; hl-line-mode
   `(hl-line ((t (:background ,selection))))
   
   ;; linum-mode
   `(linum ((t (:background ,background :foreground ,comment))))
   
   ;; org-mode
   `(org-date ((t (:foreground ,purple))))
   `(org-done ((t (:foreground ,green))))
   `(org-hide ((t (:foreground ,selection))))
   `(org-link ((t (:foreground ,blue))))
   `(org-todo ((t (:foreground ,red))))
   
   ;; show-paren-mode
   `(show-paren-match ((t (:background ,dark-cyan :foreground ,cyan))))
   `(show-paren-mismatch ((t (:background ,dark-red :foreground ,red))))
   
   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,purple))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,blue))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,green))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,yellow))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,cyan))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,red))))  
  ))
(provide-theme 'term)
