(require 'atomic-chrome)
(atomic-chrome-start-server)

(setq atomic-chrome-default-major-mode 'markdown-mode)

(setq atomic-chrome-url-major-mode-alist
      '(("github\\.com" . gfm-mode)
        ("overleaf\\.com" . yatex-mode)))
