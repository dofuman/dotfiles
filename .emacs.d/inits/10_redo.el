;;
;; redo+の設定
;;
(when (require 'redo+ nil t)
  (global-set-key (kbd "C-'") 'redo))
