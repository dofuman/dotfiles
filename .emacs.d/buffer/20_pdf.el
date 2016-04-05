;; doc-view-modeのときに行番号を表示すると非常に重たい
(add-hook 'doc-view-mode-hook
		  (lambda ()
			(linum-mode -1)
			))
(add-hook 'pdf-view-mode-hook
		  (lambda ()
			(linum-mode -1)
			))
;; pdf-tools
(pdf-tools-install)
;;(setq revert-without-query 'yes)
(add-hook 'doc-view-mode-hook 'auto-revert-mode)
