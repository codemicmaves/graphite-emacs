(load-theme 'graphite-dark t)
(load-theme 'modus-vivendi t)

(defun graphite/auto-select-theme ()
  (if window-system
      (progn (disable-theme 'modus-vivendi)
	     (enable-theme 'graphite-dark))
    (progn (disable-theme 'graphite-dark)
	   (enable-theme 'modus-vivendi))))

(defun graphite/set-theme (frame)
  (select-frame frame)
  (if (window-system frame)
      (progn (disable-theme 'modus-vivendi)
	     (enable-theme 'graphite-dark))
    (progn (disable-theme 'graphite-dark)
	   (enable-theme 'modus-vivendi))))

(add-hook 'after-make-frame-functions #'graphite/set-theme)

(graphite/auto-select-theme)
