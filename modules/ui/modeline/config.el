(setq backup/mode-line-format mode-line-format)

(defun graphite/update-modeline (format)
  (setq-default mode-line-format format)
  (force-mode-line-update)
  (redisplay t))

(global-set-key (kbd "<f9>") (lambda () (interactive) (graphite/update-modeline backup/mode-line-format) ))
(global-set-key (kbd "<f10>") (lambda () (interactive) (graphite/update-modeline graphite/mode-line-format) ))

(defun graphite/modeline--make-unit (form width &rest PROPS)
  "Make a unit of information to add to the modeline."
  (let ((unit `(:eval ,form)))
    (when (and width (> width 0))
      (setq unit `(,width ,unit)))
    (when PROPS
      (setq unit (append `(:propertize ,unit) PROPS)))
    unit))



