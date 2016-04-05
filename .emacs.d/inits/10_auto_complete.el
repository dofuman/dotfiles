;;
;; auto complete config
;;
(require 'auto-complete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)
(re
;; 情報源として
    ;; * ac-source-filename
    ;; * ac-source-words-in-same-mode-buffers
    ;; を利用
;(ac-set-trigger-key "TAB")
(setq-default ac-sources '(ac-source-filename ac-source-words-in-same-mode-buffers))
(setq ac-auto-start 2) ;;;2文字以上で補完
(setq ac-delay 0.05) ;;;0.05秒後に補完開始
(setq ac-use-menu-map t)   
(setq ac-use-fuzzy t) ;;;曖昧補完
(setq ac-use-comphist t) ;;;補完推測機能有効
(setq ac-auto-show-menu 0.05) ;;;補完メニューを表示
(setq ac-quick-help-delay 0.5) ;;;クイックヘルプを表示
(setq ac-ignore-caes nil) ;;;大文字と小文字を区別する
(add-to-list 'ac-modes 'text-mode)         ;; text-modeでも自動的に有効にする
(add-to-list 'ac-modes 'fundamental-mode)  ;; fundamental-mode
(add-to-list 'ac-modes 'org-mode)
(add-to-list 'ac-modes 'yatex-mode)
(setq popup-use-optimized-column-computation t)
