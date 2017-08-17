;;
;; load-path config
;;

;;package.el
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/elpa")
(add-to-list 'load-path "~/.emacs.d/site-lisp")

;;cask.el
(require 'cask"~/.cask/cask.el")
(cask-initialize)


