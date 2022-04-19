(graphite/after
 'crux
 (global-set-key [remap move-beginning-of-line] #'crux-move-beginning-of-line)
 (global-set-key [remap kill-whole-line]        #'crux-kill-whole-line)
 (global-set-key [(shift return)]               #'crux-smart-open-line))

(graphite/after
 'popper
 
 (setq popper-reference-buffers
       '("\\*Messages\\*"
	 "\\*Warnings\\*"
	 "Output\\*$"
	 "\\*Async Shell Command\\*"
	 help-mode
	 helpful-mode
	 compilation-mode))
 
 (global-set-key (kbd "C-`")   #'popper-toggle-latest)
 (global-set-key (kbd "M-`")   #'popper-cycle)
 (global-set-key (kbd "C-M-`") #'popper-toggle-type)
 (popper-mode +1)

 (require 'popper-echo)
 (popper-echo-mode +1))
