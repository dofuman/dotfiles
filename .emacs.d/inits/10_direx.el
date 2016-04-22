;; direx is a simple directory explorer.
(require 'direx)
;;If you are using popwin, you can use directory viewer as temporary "side-bar",like this:
(push '(direx:direx-mode :position left :width 30 :dedicated t)
	  popwin:special-display-config)
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory-other-window)
;; Here is a minimal example usage:
;;(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory)

