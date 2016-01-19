;;
;;; C++ style
;;
(add-hook 'c++-mode-hook
          '(lambda()
             (c-set-style "stroustrup")
             (setq indent-tabs-mode nil)     ;; インデントは空白文字で行う（TABコードを空白に変換）
	     (setq tab-width 4)
             (c-set-offset 'innamespace 0)   ;;;namespace {}の中はインデントしない
             (c-set-offset 'arglist-close 0) ;;;関数の引数リストの閉じ括弧はインデントしない
             )
	  (semantic-mode 1)
	  ;;; (setq ac-sources (append ac-sources '(ac-source-semantic)))
	  (setq ac-sources (append ac-sources '(ac-source-semantic-raw)))
	  )
;; .hファイルをC++-modeで開く
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))


;; fly-check c/c++-mode
(add-hook 'c-mode-common-hook 'flycheck-mode)
;; 日本語対応
(defmacro flycheck-define-clike-checker (name command modes)
  `(flycheck-define-checker ,(intern (format "%s" name))
     ,(format "A %s checker using %s" name (car command))
     :command (,@command source-inplace)
     :error-patterns
     ((warning line-start (file-name) ":" line ":" column ": 警告:" (message) line-end)
      (error line-start (file-name) ":" line ":" column ": エラー:" (message) line-end))
     :modes ',modes))
(flycheck-define-clike-checker c-gcc-ja
                   ("gcc" "-fsyntax-only" "-Wall" "-Wextra")
                   c-mode)
(add-to-list 'flycheck-checkers 'c-gcc-ja)
(flycheck-define-clike-checker c++-g++-ja
                   ("g++" "-fsyntax-only" "-Wall" "-Wextra" "-std=c++11")
                   c++-mode)
(add-to-list 'flycheck-checkers 'c++-g++-ja)


;; auto complete c header's ac config
(require 'auto-complete-c-headers)
(add-hook 'c++-mode-hook '(setq ac-sources (append ac-sources '(ac-source-c-headers))))
(add-hook 'c-mode-hook '(setq ac-sources (apanpend ac-sources '(ac-source-c-headers))))

;; iedit mode key config
(define-key global-map (kbd "C-c ;") 'iedit-mode)

;;function-args
(require 'function-args)
(fa-config-default)
 
(define-key function-args-mode-map (kbd "M-o") nil)
(define-key c-mode-map (kbd "C-M-:") 'moo-complete)
(define-key c++-mode-map (kbd "C-M-:") 'moo-complete)
   
(custom-set-faces
 '(fa-face-hint ((t (:background "#3f3f3f" :foreground "#ffffff"))))
 '(fa-face-hint-bold ((t (:background "#3f3f3f" :weight bold))))
 '(fa-face-semi ((t (:background "#3f3f3f" :foreground "#ffffff" :weight bold))))
 '(fa-face-type ((t (:inherit (quote font-lock-type-face) :background "#3f3f3f"))))
 '(fa-face-type-bold ((t (:inherit (quote font-lock-type-face) :background "#999999" :bold t))))
;; ;; flymake-google-cpplint
;; (defun my:flymake-google-init ()
;;   (require 'flymake-google-cpplint )
;;   (custom-set-variables
;;    '(flymake-google-cpplint-command "/usr/local/bin/cpplint")
;;   )
;;   (flymake-google-cpplint-load)
;; )
;; (add-hook 'c-mode-hook 'my:flymake-google-init)
;; (add-hook 'c++-mode-hook 'my:flymake-google-init)

;;google-c-style
;; (require 'google-c-style)
;; (add-hook 'c-mode-common-hook 'google-set-c-style)
;; (add-hook 'c-mode-common-hook 'google-make-newline-indent)


