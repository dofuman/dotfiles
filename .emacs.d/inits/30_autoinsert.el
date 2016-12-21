;; 自動挿入
;; #!/usr/bin/env pythonとかを自動で挿入してくれる
(require 'autoinsert )
(add-hook 'find-file-hooks 'auto-insert)
;; (setq auto-insert-query nil) ;; 自動補完しますか?って聞かれる機能のオンオフ

;; テキスト形式で与える方法
;; (setq auto-insert-directory "~/.emacs.d/insert/") ;; 最後にスラッシュ必要
;; (define-auto-insert "\\.rb$" "template.rb")
(setq auto-insert-alist nil) ;; デフォルトのひな形を一度全部オフにする。
(setq auto-insert-alist
      (append '(
                (("\\.rb$" . "ruby template")
                 nil ;; ここに"name?"とか書くと、最初にミニバッファで"name?"ってでて入力を促される。入力したものはstrという変数に入る。
                 "#!/usr/bin/env ruby\n"
                 "\n"
                 _ ;; アンダーバーを書いたところにカーソルが移動する
                 )) auto-insert-alist))
(setq auto-insert-alist
      (append '(
                (("\\.py$" . "python template")
                 nil
                 "#!/usr/bin/env python3\n"
				 "#-*- coding:utf-8 -*-\n"
                 "\n"
                 "import sys, os, math\n"
                 "# import numpy as np\n"
                 "# import scipy as sp\n"
                 "# import matplotlib as plt\n"
                 "\n"


                 _
                 )) auto-insert-alist))
(setq auto-insert-alist
      (append '(
                (("\\.sh$" . "shell script template")
                 nil
                 "#!/bin/sh\n"
                 "\n"
                 _
                 )) auto-insert-alist))
