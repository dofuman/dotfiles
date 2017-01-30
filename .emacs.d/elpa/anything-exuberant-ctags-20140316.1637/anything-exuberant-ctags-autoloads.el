;;; anything-exuberant-ctags-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "anything-exuberant-ctags" "../../../../../.emacs.d/elpa/anything-exuberant-ctags-20140316.1637/anything-exuberant-ctags.el"
;;;;;;  "bd37d51c2a99429f812e96dedacbe4ab")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/anything-exuberant-ctags-20140316.1637/anything-exuberant-ctags.el

(autoload 'anything-exuberant-ctags-select "anything-exuberant-ctags" "\
Tag jump using `anything'.
If SYMBOL-NAME is non-nil, jump tag position with SYMBOL-NAME.

\(fn &optional SYMBOL-NAME)" t nil)

(autoload 'anything-exuberant-ctags-select-from-here "anything-exuberant-ctags" "\
Tag jump with current symbol using `anything'.

\(fn)" t nil)

(autoload 'anything-exuberant-ctags-enable-cache "anything-exuberant-ctags" "\
Enable use tag file in cache directory.

\(fn)" t nil)

(autoload 'anything-exuberant-ctags-disable-cache "anything-exuberant-ctags" "\
Disable use tag file in cache directory.

\(fn)" t nil)

(autoload 'anything-exuberant-ctags-toggle-cache "anything-exuberant-ctags" "\
Toggle tag file cache directory status.

\(fn)" t nil)

(defvar anything-c-source-exuberant-ctags-select '((name . "Exuberant ctags") (header-name . anything-source-exuberant-ctags-header-name) (init . anything-exuberant-ctags-create-buffer) (candidates-in-buffer) (get-line . anything-exuberant-ctags-get-line) (action ("Goto the location" . anything-exuberant-ctags-goto-location)) (candidate-number-limit . 9999) (candidate-transformer lambda (candidates) (anything-exuberant-ctags-transformer candidates))))

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/anything-exuberant-ctags-20140316.1637/anything-exuberant-ctags-autoloads.el"
;;;;;;  "../../../../../.emacs.d/elpa/anything-exuberant-ctags-20140316.1637/anything-exuberant-ctags.el")
;;;;;;  (22671 23314 483916 711000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; anything-exuberant-ctags-autoloads.el ends here
