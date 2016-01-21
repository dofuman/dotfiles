;;
;;; C++ style
;;
(require 'cc-mode)

;; c-mode-common-hook は C/C++ の設定
(add-hook 'c-mode-common-hook
          (lambda ()
            (setq c-default-style "k&r") ;; カーニハン・リッチースタイル
            (setq indent-tabs-mode nil)  ;; タブは利用しない
            (setq c-basic-offset 2)      ;; indent は 2 スペース
            ))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;;flycheck-mode(error check)
(require 'flycheck)
(add-hook 'c-mode-common-hook 'flycheck-mode)
(flycheck-define-checker c/c++
  "A C/C++ checker using g++."
  :command ("g++" "-Wall" "-Wextra" source)
  :error-patterns  ((error line-start
                           (file-name) ":" line ":" column ":" " エラー: " (message)
                           line-end)
                    (warning line-start
                           (file-name) ":" line ":" column ":" " 警告: " (message)
                           line-end))
  :modes (c-mode c++-mode))


;; ;; iedit mode key config
;; 同じ変数をまとめて修正するときに使う．
(define-key global-map (kbd "C-c ;") 'iedit-mode)

;;日本語対応させてるらしいけどエラーメッセージが別バッファで開くのが
;;うっとおしいのでコメントアウト
;; (defmacro flycheck-define-clike-checker (name command modes)
;;   `(flycheck-define-checker ,(intern (format "%s" name))
;;      ,(format "A %s checker using %s" name (car command))
;;      :command (,@command source-inplace)
;;      :error-patterns
;;      ((warning line-start (file-name) ":" line ":" column ": 警告:" (message) line-end)
;;       (error line-start (file-name) ":" line ":" column ": エラー:" (message) line-end))
;;      :modes ',modes))
;; (flycheck-define-clike-checker c-gcc-ja
;;                    ("gcc" "-fsyntax-only" "-Wall" "-Wextra")
;;                    c-mode)
;; (add-to-list 'flycheck-checkers 'c-gcc-ja)
;; (flycheck-define-clike-checker c++-g++-ja
;;                    ("g++" "-fsyntax-only" "-Wall" "-Wextra" "-std=c++11")
;;                    c++-mode)
;; (add-to-list 'flycheck-checkers 'c++-g++-ja)

;; header fileを acしても割としょうもないと思ったのと，補完失敗してるぽいので，コメントアウト
;; ;; auto complete c header's ac config
;; (require 'auto-complete-c-headers)
;; (add-hook 'c++-mode-hook '(setq ac-sources (append ac-sources '(ac-source-c-headers))))
;; (add-hook 'c-mode-hook '(setq ac-sources (apanpend ac-sources '(ac-source-c-headers))))




