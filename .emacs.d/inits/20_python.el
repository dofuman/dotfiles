;;python-mode config
(require 'jedi-core)
(setq jedi:complete-on-dot t)
(setq jedi:use-shortcuts t)
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook
                   '(lambda ()
                        (setq indent-tabs-mode nil)
                        (setq indent-level 4)
                        (setq python-indent 4)
                        (setq tab-width 4)))
(add-hook 'python-mode-hook
          (lambda ()
            (add-to-list 'company-backends '(company-jedi company-dabbrev company-yasnippet))))

(require 'python)

(defun tnoda/turn-on-flycheck-mode ()
  (flycheck-mode 1))
(add-hook 'python-mode-hook 'tnoda/turn-on-flycheck-mode)

;;jedi-direx.el
;; (eval-after-load "python"
;;   '(define-key python-mode-map "\C-cx" 'jedi-direx:pop-to-buffer))
;; (add-hook 'jedi-mode-hook 'jedi-direx:setup)
;;
;;
;;
(add-hook 'python-mode-hook
        (lambda ()
            (setq-default indent-tabs-mode t)
            (setq-default tab-width 4)
            (setq-default py-indent-tabs-mode t)
        (add-to-list 'write-file-functions 'delete-trailing-whitespace)))
