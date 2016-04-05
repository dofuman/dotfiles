;;
;;  tex YaTexの設定 popwin(for yatex)
;;
(setq auto-mode-alist
      (cons (cons "\\.tex$" 'yatex-mode)  auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(setq load-path (cons (expand-file-name "~/.emacs.d/site-lisp/yatex") load-path))
(setq YaTeX-inhibit-prefix-letter t)
(setq YaTeX-kanji-code nil)
(setq YaTeX-latex-message-code 'utf-8)

;;;(setq tex-command "latexmk -pvc")  ;;保存したら自動で再コンパイル
(setq tex-command "latexmk")
(setq dvi2-command "evince")

;;;auto-complete latex
(require 'auto-complete-latex)
(setq ac-l-dict-directory "~/.emacs.d/ac-l-dict/")
(add-to-list 'ac-modes 'foo-mode)
(add-hook 'foo-mode-hook 'ac-l-setup)

(require 'platform-p)
(when platform-linux-p ; for GNU/Linux
;;; inverse search
  (require 'dbus)
  
  (defun un-urlify (fname-or-url)
	"A trivial function that replaces a prefix of file:/// with just /."
	(if (string= (substring fname-or-url 0 8) "file:///")
		(substring fname-or-url 7)
	  fname-or-url))
  
  (defun evince-inverse-search (file linecol &rest ignored)
	(let* ((fname (un-urlify file))
		   (buf (find-file fname))
		   (line (car linecol))
		   (col (cadr linecol)))
	  (if (null buf)
		  (message "[Synctex]: %s is not opened..." fname)
		(switch-to-buffer buf)
		(goto-line (car linecol))
		(unless (= col -1)
		  (move-to-column col)))))
  
  (dbus-register-signal
   :session nil "/org/gnome/evince/Window/0"
   "org.gnome.evince.Window" "SyncSource"
   'evince-inverse-search)
  )

;;; popwin(for yatex)
(require 'popwin-yatex)
(push '("*YaTeX-typesetting*") popwin:special-display-config)

;; yatex-indent
(autoload 'latex-indent-command "~/misc/latex-indent"
  "Indent current line accroding to LaTeX block structure.")
(autoload 'latex-indent-region-command "~/misc/latex-indent"
  "Indent each line in the region according to LaTeX block structure.")
(add-hook
 'latex-mode-hook
 '(lambda ()
    (define-key tex-mode-map "\t"       'latex-indent-command)
    (define-key tex-mode-map "\M-\C-\\" 'latex-indent-region-command)))
