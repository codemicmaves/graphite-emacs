(graphite/after 'vertico
		(vertico-mode))

(graphite/after 'orderless
		(setq completion-styles '(orderless))
		(setq completion-category-defaults nil)
		(setq completion-category-overrides '((file (styles partial-completion)))))

(graphite/after 'savehist (savehist-mode))

(graphite/after 'marginalia (marginalia-mode))
