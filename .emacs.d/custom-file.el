;; custom emacs theme 

(add-to-list 'custom-theme-load-path "~/.emacs.d/site-lisp/atom-one-dark-theme/")
(load-theme 'atom-one-dark t)
(require 'platform-p)
;; 背景を透明にする(透明度合いは 95/100)
;(set-frame-parameter nil 'alpha 95)
;;; カッコのハイライト
(show-paren-mode t)

;; transparent background

(set-frame-parameter (selected-frame) 'alpha '(98 98))
(add-to-list 'default-frame-alist '(alpha 98 98))

(setq default-frame-alist
      (append (list 
	'(width . 166)  ;; <- ココと
	'(height . 43)  ;; <- ココの数字
	'(alpha . (98 98 98 98))
	)
	default-frame-alist))
