;; --------------------------
;; Graphite: Custom variables
;; --------------------------

(defcustom graphite/font "FuraCode Nerd Font Mono"
  "Default font for graphite."
  :group 'graphite
  :initialize 'custom-initialize-default
  :set   '(lambda (symbol value)
	    (progn
	      (set-default symbol value)
	      (set-face-attribute 'default nil
				  :family value
				  :weight 'normal
				  :height (* graphite/font-size 10)))))

(defcustom graphite/variable-pitch-font "Kreon"
  "Variable pitch font for graphite."
  :group 'graphite
  :initialize 'custom-initialize-default
  :set   '(lambda (symbol value)
	    (progn
	      (set-default symbol value)
	      (set-face-attribute 'variable-pitch nil
				  :family value
				  :weight 'light
				  :height (* graphite/variable-pitch-font-size 10)))))

(defcustom graphite/font-size 14
  "Default font size for graphite."
  :group 'graphite
  :initialize 'custom-initialize-default
  :set '(lambda (symbol value)
	  (progn
	    (setq-default symbol value)
	    (set-face-attribute 'default nil
				:family graphite/font
				:weight 'normal
				:height (* value 10)))))

(defcustom graphite/variable-pitch-font-size 14
  "Variable pitch font size for graphite."
  :group 'graphite
  :initialize 'custom-initialize-default
  :set '(lambda (symbol value)
	  (progn
	    (setq-default symbol value)
	    (set-face-attribute 'variable-pitch nil
				:family graphite/variable-pitch-font
				:weight 'normal
				:height (* value 10)))))

(defcustom graphite/line-spacing 0.25
  "Line height for all fonts in graphite."
  :group 'graphite
  :initialize 'custom-initialize-default
  :set '(lambda (symbol value)
	  (progn (setq-default symbol value)
		 (setq-default line-spacing graphite/line-spacing))))

;; Set font options
(set-face-attribute 'default nil
		    :family graphite/font
		    :weight 'normal
		    :height (* graphite/font-size 10))
(set-face-attribute 'variable-pitch nil
		    :family graphite/variable-pitch-font
		    :weight 'light
		    :height (* graphite/variable-pitch-font-size 10))
(setq-default line-spacing graphite/line-spacing)
                                                                                        
