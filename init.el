;; --------------------------
;; Graphite: Load user config
;; --------------------------

(defun graphite/load (file)
  "Load `file' if it exists. Otherwise do nothing."
  (if (file-exists-p file)
      (load file)))

;; --------------------------
;; Graphite: Custom variables
;; --------------------------
(defcustom graphite/init-file
  "~/.graphite.d/init.el"
  "Graphite init file path."
  :group 'graphite)

(defcustom graphite/dir
  (file-name-directory graphite/init-file)
  "Graphite directory."
  :group 'graphite)

(defcustom graphite/modules-dir
  (concat graphite/dir "modules")
  "Graphite modules directory path."
  :group 'graphite)

(defcustom graphite/modules '((emacs   . (defaults))
			      (package . (straight))
			      (ui      . (defaults fonts colors vertico corfu))
			      (lang    . (elisp english))
			      (tools   . (magit navigation)))
  "Graphite modules list."
  :group 'graphite)

(defcustom graphite/user-config-file
  "~/graphite/config.el"
  "Graphite user init file path."
  :group 'graphite)

(defcustom graphite/user-config-dir
  (file-name-directory graphite/user-config-file)
  "Graphite user directory."
  :group 'graphite)

(defcustom graphite/user-modules-dir
  (concat graphite/user-config-dir "modules")
  "Graphite user modules directory path."
  :group 'graphite)

(defcustom graphite/user-modules
  '()
  "Graphite user defined modules."
  :group 'graphite)

(defvar graphite/packages--list '())

;; --------------------------
;; Graphite: Helper functions
;; --------------------------
(defun graphite/reload-emacs-config ()
  "Reload emacs configuration"
  (interactive)
  (load-file graphite/init-file)
  (message "Configuration re-loaded."))


(defun graphite/package (package)
  "Install `package' using straight."
  (add-to-list 'graphite/packages--list package t))

(defun graphite/load-modules--with-filename (filename modulesdir modules)
  "Helper method to load specified `filename'.el from `modulesdir' directory."
  (mapc (lambda (categories)
	  (let ( (category (car categories))
		 (units    (cdr categories)) )
	    (mapc (lambda (unit)
		    (graphite/load (format "%s/%s/%s/%s.el"
					   modulesdir
					   category
					   unit
					   filename)) )
		  units)))
	modules))

(defun graphite/load-modules--config ()
  "Load configuration from `graphite/modules-dir'."
  (graphite/load-modules--with-filename "config" graphite/modules-dir graphite/modules)
  (graphite/load-modules--with-filename "config" graphite/user-modules-dir graphite/user-modules))

(defun graphite/load-modules--packages ()
  "Install packages into `graphite/packages--list'."
  (graphite/load-modules--with-filename "packages" graphite/modules-dir graphite/modules)
  (graphite/load-modules--with-filename "packages" graphite/user-modules-dir graphite/user-modules))

(defun graphite/activate-packages ()
  "Register packages in `graphite/packages--list'."
  (dolist (package graphite/packages--list) (straight-use-package-lazy package)))

(defun graphite/update-packages ()
  "Install or update packages in `graphite/packages--list'."
  (interactive)
  (graphite/load-modules--packages)
  (dolist (package graphite/packages--list) (straight-use-package package))
  (message "Packages updated."))

(defun graphite/initialize ()
  "Initial setup for graphite emacs config."
  (graphite/load graphite/user-config-file)
  (add-to-list 'load-path graphite/modules-dir)
  (add-to-list 'load-path graphite/user-modules-dir)
  (graphite/load-modules--packages)
  (graphite/activate-packages)
  (graphite/load-modules--config))

;; -------------------
;; Graphite: Bootstrap
;; -------------------
(graphite/initialize)
(global-set-key (kbd "<f8>") 'graphite/reload-emacs-config)
