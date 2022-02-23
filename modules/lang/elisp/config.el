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

(graphite/after 'helpful
		(global-set-key (kbd "C-h f") #'helpful-callable)
		(global-set-key (kbd "C-h v") #'helpful-variable)
		(global-set-key (kbd "C-h k") #'helpful-key))

(graphite/after 'elisp-demos
		(advice-add 'helpful-update :after #'elisp-demos-advice-helpful-update))

(graphite/after 'sotlisp
		(add-hook 'emacs-lisp-mode-hook #'speed-of-thought-mode))

(graphite/after 'emr
		(define-key prog-mode-map (kbd "M-RET") 'emr-show-refactor-menu))
