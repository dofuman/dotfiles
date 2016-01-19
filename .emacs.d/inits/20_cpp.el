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
