;;
;; etc config
;;
;;行番号の表示
(require 'linum)
(global-linum-mode t)
;; (setq linum-format "%4d")

;; coding system
(prefer-coding-system 'utf-8)
;; ;バッファ自動再読み込み
(global-auto-revert-mode 1)

;; ;マウスで選択した領域を自動コピー
(setq mouse-drag-copy-region t)

;; ;フレーム設定
(size-indication-mode nil) ; ファイルサイズを表示
(setq frame-title-format "%f") ; タイトルに編集中ファイルのフルパスを表示

;; ; バッファの終わりでのnewlineを禁止する
(setq next-line-add-newlines nil)

;常に最終行に一行追加する(自動的に)
(setq require-final-newline nil)

;;リージョンに上書き
(delete-selection-mode t)

;; ;ファイルが #! から始まる場合， +x (実行権限) を付けて保存する
(add-hook 'after-save-hook
	  'executable-make-buffer-file-executable-if-script-p)

;; ;;; スクロール時のカーソル位置の維持
(setq scroll-preserve-screen-position t)

;; ;;; スクロール行数（一行ごとのスクロール）
(setq vertical-centering-font-regexp ".*")
(setq scroll-conservatively 35)
(setq scroll-margin 0)
(setq scroll-step 1)

;; ;;; 画面スクロール時の重複行数
(setq next-screen-context-lines 1)

;; ;;; 起動メッセージの非表示
(setq inhibit-startup-message t)

;; ;;; スタートアップ時のエコー領域メッセージの非表示
(setq inhibit-startup-echo-area-message -1)

;; eshellに色を付けるらしい？
;;
;; compilation config
;;
(add-hook 'compilation-mode-hook 'ansi-color-for-comint-mode-on)
(add-hook 'compilation-filter-hook
          '(lambda ()
             (let ((start-marker (make-marker))
                   (end-marker (process-mark (get-buffer-process (current-buffer)))))
               (set-marker start-marker (point-min))
               (ansi-color-apply-on-region start-marker end-marker))))

;;選択範囲の行と列を表示する
(line-number-mode t)
(column-number-mode t)
;;選択範囲の情報表示
(defun count-lines-and-chars ()
  (if mark-active
      (format "[%3d:%4d]" 
              (count-lines (region-beginning) (region-end))
              (- (region-end) (region-beginning)))
    ""))
(add-to-list 'default-mode-line-format
             '(:eval (count-lines-and-chars)))
;; smartparens
(smartparens-global-mode)
;; [DEL]キーもしくは[C-h]に当てられているdelete-backward-charにadviceをかけられて削除するたびにフリーズする．これを無効化.
(ad-disable-advice 'delete-backward-char 'before 'sp-delete-pair-advice)
(ad-activate 'delete-backward-char)
