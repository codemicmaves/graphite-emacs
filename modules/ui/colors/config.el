
(defvar graphite/red      "#BA2B23")
(defvar graphite/blue     "#4F91A1")
(defvar graphite/green    "#259E7E")
(defvar graphite/yellow   "#EAAB3A")
(defvar graphite/orange   "#CC5E30")
(defvar graphite/violet   "#7D819C")
(defvar graphite/fg       "#99D1CE")
(defvar graphite/bg       "#0C1014")
(defvar graphite/fg-dark  "#80B6B3")
(defvar graphite/bg-light "#0A2F3F")

;; (graphite/after 'nord-theme
;; 		(load-theme 'nord t)
;; 		(set-face-background 'default "#252A33" nil)
;; 		(set-face-background 'fringe  "#252A33" nil))

(graphite/after 'gotham-theme
 		(load-theme 'gotham t)

		(setq graphite/red      "#BA2B23")
		(setq graphite/blue     "#4F91A1")
		(setq graphite/green    "#259E7E")
		(setq graphite/yellow   "#EAAB3A")
		(setq graphite/orange   "#CC5E30")
		(setq graphite/violet   "#7D819C")
		(setq graphite/fg       "#99D1CE")
		(setq graphite/bg       "#0C1014")
		(setq graphite/fg-dark  "#80B6B3")
		(setq graphite/bg-light "#0A2F3F")
		
		(set-face-background 'fringe  graphite/bg nil)

		(set-face-attribute 'tab-line nil :background graphite/bg :foreground graphite/fg)
		(set-face-attribute 'tab-bar nil :background graphite/bg :foreground graphite/fg :underline nil)
		(set-face-attribute 'tab-bar-tab nil :background graphite/bg-light :foreground graphite/fg-dark :underline graphite/fg :box nil :weight 'normal)
		(set-face-attribute 'tab-bar-tab-inactive nil :background graphite/bg :foreground graphite/fg-dark :underline nil :weight 'light)

		(add-to-list 'default-frame-alist '(internal-border-width . 4)))
