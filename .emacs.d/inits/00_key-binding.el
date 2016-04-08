;;
;; global-keybinding config
;;
(global-set-key (kbd "C-t") 'other-window) ;C-tで分割したwindowの切り替え
(global-set-key (kbd "C-j") 'set-mark-command) ;C-jでマークセット
(global-set-key (kbd "M-<left>")  'windmove-left)
(global-set-key (kbd "M-<down>")  'windmove-down)
(global-set-key (kbd "M-<up>")    'windmove-up)
(global-set-key (kbd "M-<right>") 'windmove-right)
(keyboard-translate ?\C-h ?\C-?); C-hをバックスペースに変更
