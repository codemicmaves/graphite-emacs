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

(defun graphite/modeline-hello ()
  "hello")

(defvar graphite/mode-line-format (graphite/modeline--make-unit #'graphite/modeline-hello))
(setq graphite/mode-line-format (graphite/modeline--make-unit #'graphite/modeline-hello nil))
(setq graphite/mode-line-format (graphite/modeline--make-unit #'graphite/modeline-hello 0 :foreground "#ff0000"))


(defun mul (num &rest nums)
  (print nums))

(defun add (num &rest nums)
  (apply 'mul num nums))

(add 1 2 3 4)





