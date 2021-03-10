;;; This is all kind of necessary
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("gnu" . "https://elpa.gnu.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")))
(package-initialize)

;;; Bootstrapping use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;; This is the actual config file
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

;;; Custom in a separate file allows for personal stuff in a file outside of version control
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
