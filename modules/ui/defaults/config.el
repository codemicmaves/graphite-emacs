(setq fancy-splash-image (concat graphite/dir "images/logo/logo_256x256.png"))

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(set-default 'truncate-lines t)

(setq-default left-margin-width  1
	      right-margin-width 1)
(set-window-buffer nil (current-buffer))

(setq linum-format " %4d ")

(setq tab-bar-close-button-show nil)
(setq tab-bar-new-button-show nil)
(setq tab-bar-separator "  ")
(setq x-underline-at-descent-line t)
