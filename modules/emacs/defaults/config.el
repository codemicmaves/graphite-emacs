(defalias 'yes-or-no-p 'y-or-n-p)

(setq backup-directory-alist `(("." . "~/.saves-emacs")))
(setq backup-by-copying t)
(setq delete-old-versions t)
(setq kept-new-versions 6)
(setq kept-old-versions 2)
(setq version-control t)

(global-set-key (kbd "C-c o") 'occur)
