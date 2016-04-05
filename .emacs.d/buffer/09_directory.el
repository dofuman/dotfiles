;;
;; directory config
;; 
(defun in-directory (dir)
  "Runs execute-extended-command with default-directory set to the given directory."
  (interactive "DIn directory: ")
  (let ((default-directory dir))
	(call-interactively 'execute-extended-command)))

(global-set-key (kbd "M-X") 'in-directory)
