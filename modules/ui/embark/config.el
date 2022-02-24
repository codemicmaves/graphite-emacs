(graphite/after 'which-key
		(which-key-mode))

(graphite/after 'embark
		(global-set-key (kbd "C-.")   #'embark-act)
		(global-set-key (kbd "C-;")   #'embark-dwim)
		(global-set-key (kbd "C-h B") #'embark-bindings)

		(setq prefix-help-command #'embark-prefix-help-command))
