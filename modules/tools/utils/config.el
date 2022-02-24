(graphite/after 'crux
		(global-set-key [remap move-beginning-of-line] #'crux-move-beginning-of-line)
		(global-set-key [remap kill-whole-line]        #'crux-kill-whole-line)
		(global-set-key [(shift return)]               #'crux-smart-open-line))
