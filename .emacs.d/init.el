;;
;; hostごとの設定を読み込む
;;
(setq init_host (concat "~/.dotfiles/.emacs.d/init_" (system-name) ".el"))
(if (file-exists-p init_host)
    (load-file init_host))

;;
;; package.el (mepla,marmaladeを追加)
;;
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;;
;; init-loader
;;
(require 'init-loader)
(setq init-loader-show-log-after-init 'error-only)
(init-loader-load "~/.emacs.d/inits")
