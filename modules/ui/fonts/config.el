;; --------------------------
;; Graphite: Custom variables
;; --------------------------
(defcustom graphite/font "FuraCode Nerd Font Mono"
  "Default font for graphite."
  :group 'graphite)

(defcustom graphite/variable-pitch-font "Kreon"
  "Variable pitch font for graphite."
  :group 'graphite)

;; Set font options
(set-face-attribute 'default nil
		    :family graphite/font
		    :weight 'normal
		    :height 130)
(set-face-attribute 'variable-pitch nil
		    :family graphite/variable-pitch-font
		    :weight 'light
		    :height 140)
                                                                                        
