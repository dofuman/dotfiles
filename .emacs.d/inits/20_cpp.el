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
;;
;; auto complete c header's ac config
;;
(defun my:ac-c-header-init()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (acc-to-list 'achead:include-directories '"/usr/include/c++/4.8")
)
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)

;; iedit mode key config
(define-key global-map (kbd "C-c ;") 'iedit-mode)

;; flymake-google-cpplint
(defun my:flymake-google-init ()
  (require 'flymake-google-cpplint )
  (custom-set-variables
   '(flymake-google-cpplint-command "/usr/local/bin/cpplint")
  )
  (flymake-google-cpplint-load)
)
(add-hook 'c-mode-hook 'my:flymake-google-init)
(add-hook 'c++-mode-hook 'my:flymake-google-init)

;;google-c-style
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)


