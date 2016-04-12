;;
;;undo-tree
;;
(require 'undo-tree)
(global-undo-tree-mode)
(global-set-key (kbd "M-/") 'undo-tree-redo)

(require 'volatile-highlights)
(volatile-highlights-mode t)
