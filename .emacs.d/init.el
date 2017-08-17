;;
;; package.el (mepla,marmaladeを追加)
;;
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;;cask.el
(require 'cask"~/.cask/cask.el")
(cask-initialize)

;;
;; init-loader
;;
(require 'init-loader)
(setq init-loader-show-log-after-init 'error-only)
(init-loader-load "~/.emacs.d/inits")
