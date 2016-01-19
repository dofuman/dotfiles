;; gnuplot-mode
(require 'gnuplot-mode)
(setq auto-mode-alist 
(append '(("\\.\\(gp\\|gnuplot\\|plt\\)$" . gnuplot-mode)) auto-mode-alist))
