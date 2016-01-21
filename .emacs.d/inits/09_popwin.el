;;; popwin
(require 'popwin)
(popwin-mode 1)
(setq display-buffer-function 'popwin:display-buffer)

;; ポップアップを画面下に表示
(setq popwin:popup-window-position 'bottom)
