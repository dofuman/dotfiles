;; magit
(global-set-key (kbd "C-x g") 'magit-status)
;; magit-gitflow
(require 'magit-gitflow)
 (add-hook 'magit-mode-hook 'turn-on-magit-gitflow)
