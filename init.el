;; --------------------------
;; Graphite: Custom variables
;; --------------------------
(defcustom graphite/init-file
  "~/graphite/init.el"
  "Graphite init file path."
  :group 'graphite)

(defcustom graphite/modules-dir
  (concat (file-name-directory graphite/init-file) "modules")
  "Graphite modules directory path."
  :group 'graphite)

(defcustom graphite/modules '((emacs   (defaults))
			      (package (straight))
			      (ui      (defaults fonts colors vertico corfu))
			      (lang    (elisp))
			      (tools   (magit)))
  "Graphite modules list."
  :group 'graphite)

(defvar graphite/packages--list '())

;; --------------------------
;; Graphite: Helper functions
;; --------------------------
(defun graphite/reload-emacs-config ()
  "Reload emacs configuration"
  (interactive)
  (load-file graphite/init-file))

(defun graphite/load (file)
  "Load `file' if it exists. Otherwise do nothing."
  (if (file-exists-p file)
      (load file)))

(defun graphite/package (package)
  "Install `package' using straight."
  (add-to-list 'graphite/packages--list package t))

(defun graphite/load-modules--with-filename (filename)
  "Helper method to load specified `filename'.el from modules directory."
  (mapc (lambda (categories)
	  (let ( (category (car categories))
		 (modules  (car (cdr categories))) )
	    (mapc (lambda (module)
		    (graphite/load (format "%s/%s/%s/%s.el"
					   graphite/modules-dir
					   category
					   module
					   filename)) )
		  modules)))
	graphite/modules))

(defun graphite/load-modules--config ()
  "Load configuration from `graphite/modules-dir'."
  (graphite/load-modules--with-filename "config"))

(defun graphite/load-modules--packages ()
  "Install packages into `graphite/packages--list' from `graphite/modules-dir'."
  (graphite/load-modules--with-filename "packages"))

(defun graphite/update-packages ()
  "Install or update packages in `graphite/packages--list'."
  (interactive)
  (cl-loop for package in graphite/packages--list do (straight-use-package package)))

(defun graphite/activate-packages ()
  "Register packages in `graphite/packages--list'."
  (cl-loop for package in graphite/packages--list do (straight-use-package-lazy package)))

(defun graphite/initialize ()
  "Initial setup for graphite emacs config."
  (add-to-list 'load-path graphite/modules-dir)
  (graphite/load-modules--packages)
  (graphite/activate-packages)
  (graphite/load-modules--config))

;; -------------------
;; Graphite: Bootstrap
;; -------------------
(graphite/initialize)
(global-set-key (kbd "<f8>") 'graphite/reload-emacs-config)
