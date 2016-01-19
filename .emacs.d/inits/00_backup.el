;;
;; emacs backup file config
;;
(setq make-backup-files nil) ;変更ファイルのバックアップ

(setq version-control nil)   ; 変更ファイルの番号つきバックアップ

(setq auto-save-list-file-name nil); 編集中ファイルのバックアップ
(setq auto-save-list-file-prefix nil)

(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t))); 編集中ファイルのバックアップ先

(setq auto-save-timeout 30); 編集中ファイルのバックアップ間隔（秒）

(setq auto-save-interval 500); 編集中ファイルのバックアップ間隔（打鍵）

(setq kept-old-versions 1);バックアップ世代数
(setq kept-new-versions 2)

(setq delete-old-versions t); 古いバックアップファイルの削除
