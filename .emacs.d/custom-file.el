(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/themes")
(load-theme 'misterioso t)
(require 'platform-p)
;; 背景を透明にする(透明度合いは 95/100)
;(set-frame-parameter nil 'alpha 95)
;;; カッコのハイライト
(show-paren-mode t)

