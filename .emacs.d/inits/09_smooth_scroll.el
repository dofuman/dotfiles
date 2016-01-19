;;
;; smooth-scroll
;;
(require 'smooth-scroll)
(smooth-scroll-mode t)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;;; one line at at time
(setq mouse-wheel-progressive-speed nil) ;;; dont accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;;; scroll window under mouse
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-display-errors-function (function flycheck-pos-tip-error-messages))
 '(show-paren-mode t)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(tool-bar-position (quote bottom)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ricty" :foundry "unknown" :slant normal :weight normal :height 128 :width normal)))))
