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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-global-modes (quote (not eshell-mode)))
 '(flycheck-display-errors-function (function flycheck-pos-tip-error-messages))
 '(package-selected-packages
   (quote
	(elscreen-persist restart-emacs matlab-mode yasnippet web-mode volatile-highlights undo-tree swoop sublime-themes srefactor smooth-scrolling smooth-scroll smartparens shackle realgud powerline popwin pdf-tools mozc mmm-mode markdown-preview-eww markdown-mode magit-gitflow jedi irony-eldoc init-loader imenus iedit ido-migemo helm-swoop helm-migemo helm-flycheck helm-company google-c-style gnuplot-mode function-args flymake-google-cpplint flymake-cursor flycheck-pos-tip flycheck-irony fcitx exec-path-from-shell elscreen descbinds-anything cuda-mode ctags-update company-jedi company-irony company-c-headers cmake-mode auto-complete-exuberant-ctags auto-complete-c-headers atom-one-dark-theme anything-exuberant-ctags)))
 '(show-paren-mode t)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(tool-bar-position (quote bottom)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ricty for Powerline" :foundry "unknown" :slant normal :weight normal :height 128 :width normal))))
 '(fixed-pitch ((t (:family "Ricty"))))
 '(variable-pitch ((t (:family "Ricty"))))
 '(whitespace-tab ((t (:foreground "dark gray" :underline t :weight bold)))))
