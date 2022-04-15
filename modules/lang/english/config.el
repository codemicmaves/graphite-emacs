(require 'dictionary)

(setq dictionary-server "dict.org")

(defun graphite/dictionary-search ()
  "Define the word at point with dictionary.el"
  (interactive)
  (let ((word (current-word t t)))
    (when word (dictionary-search word))))

(global-set-key (kbd "C-c d") #'graphite/dictionary-search)
