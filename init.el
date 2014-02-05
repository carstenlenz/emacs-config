
(server-start)

(require 'package)
;; (add-to-list 'package-archives
;;             '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; Only use melpa
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
;;(add-to-list 'package-archives
;;             '("tromey" . "http://tromey.com/elpa/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(starter-kit
                      starter-kit-lisp
                      starter-kit-bindings
                      starter-kit-eshell
                      clojure-mode
                      clojure-test-mode
                      cider
                      groovy-mode
                      rainbow-delimiters
                      adoc-mode
                      )
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(load "~/.emacs.d/better-defaults.el")
(load "~/.emacs.d/user.el")
(put 'dired-find-alternate-file 'disabled nil)
