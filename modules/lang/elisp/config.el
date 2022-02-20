(graphite/after 'paredit
		(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
		(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
		(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
		(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
		(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
		(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
		(add-hook 'scheme-mode-hook           #'enable-paredit-mode))

(graphite/after 'macrostep
		(define-key emacs-lisp-mode-map (kbd "C-c e") 'macrostep-expand))
