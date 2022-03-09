(defalias 'yes-or-no-p 'y-or-n-p)

(setq backup-directory-alist `(("." . "~/.saves-emacs")))
(setq backup-by-copying   t)
(setq delete-old-versions t)
(setq kept-new-versions   6)
(setq kept-old-versions   2)
(setq version-control     t)
(setq use-dialog-box      nil)
(global-auto-revert-mode  1)

(global-set-key (kbd "C-c o") #'occur)

(global-set-key (kbd "H--")  #'split-window-below)
(global-set-key (kbd "H-\\") #'split-window-right)
(global-set-key (kbd "H-0")  #'delete-window)
(global-set-key (kbd "H-1")  #'delete-other-windows)

(global-set-key (kbd "H-<up>")     #'windmove-up)
(global-set-key (kbd "H-<down>")   #'windmove-down)
(global-set-key (kbd "H-<left>")   #'windmove-left)
(global-set-key (kbd "H-<right>")  #'windmove-right)

(global-set-key (kbd "H-S-<up>")     #'buf-move-up)
(global-set-key (kbd "H-S-<down>")   #'buf-move-down)
(global-set-key (kbd "H-S-<left>")   #'buf-move-left)
(global-set-key (kbd "H-S-<right>")  #'buf-move-right)

(global-set-key (kbd "H-M-<left>")  #'tab-previous)
(global-set-key (kbd "H-M-<right>") #'tab-next)

(dolist (index (loop for ii from 1 to 9 collect ii))
  (global-set-key (kbd (format "M-%s" index))
		  `(lambda () (interactive) (tab-bar-select-tab ,index)))
  (global-set-key (kbd (format "C-M-%s" index))
		  `(lambda () (interactive) (tab-bar-move-tab-to ,index))))


