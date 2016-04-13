;;; Arduino Mode
(autoload 'arduino-mode "arduino-mode" "Arduino editing mode." t)
; 拡張子の関連付け
(setq auto-mode-alist (cons '("\\.\\(pde\\|ino\\)$" . arduino-mode) auto-mode-alist))
;;; .launch, .xacro, .urdf, .config, .sdf, .world を xml-mode で読み込む
(add-to-list 'auto-mode-alist '("\\.launch\\'" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.xacro\\'" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.urdf\\'" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.config\\'" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.sdf\\'" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.world\\'" . xml-mode))
