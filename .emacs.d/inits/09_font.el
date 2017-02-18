;;font
(custom-set-faces
 ;;
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;;If there is more than one, they won't work right.
 ;;
 '(default ((t (:family "Ricty for Powerline" :foundry "unknown" :slant normal :weight normal :height 128 :width normal))))
 '(whitespace-tab ((t (:foreground "dark gray" :underline t :weight bold)))))

;; ;; Ricty フォントの利用
;; (create-fontset-from-ascii-font "Ricty-14:weight=normal:slant=normal" nil "ricty")
;; (set-fontset-font "fontset-ricty"
;;                   'unicode
;;                   (font-spec :family "Ricty" :size 20)
;;                   nil
;;                   'append)
;; (add-to-list 'default-frame-alist '(font . "fontset-ricty"))
(add-to-list 'default-frame-alist '(font . "ricty-16"))
(custom-set-faces
 '(variable-pitch ((t (:family "Ricty"))))
 '(fixed-pitch ((t (:family "Ricty"))))
 )


