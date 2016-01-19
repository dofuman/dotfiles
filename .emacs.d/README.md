# emacs config
***

### init.el

initファイルはinit-loader.elを利用して，分割して管理する．
`~/.emacs.d/site-lisp/`以下に`init-loader.el`をおいて，`~/.emacs.d/init.el`に

```el

;; ~/.emacs.d/site-lisp 以下全部読み込み
(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))

(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")

```

を記述してある．これで`~/.emacs.d/inits`ディレクトリにおいてある設定ファイルを読み込むことができる．

`~/.emacs.d/inits`ディレクトリ以下のファイルは以下の設定に従って作成する．

- 環境に依存しない設定はファイル名の最初に2桁の数字をつける．

	- 番号は優先度で00がn最初位読み込まれ，99が最後に読み込まれる． 
	- 同じ数字をつけても良い．
	
- 環境依存の設定はそれぞれの環境のプレフィックスをファイル名の最初につける．

|環境|prefix|  
|:--|:--|  
|Linux|linux|  
|emacs nw|nw|  


### Version

```bash
$ emacs --v
GNU Emacs 24.4
```

### How to use
基本的にEmacs 24.4とgit 2.5.1 が必要。
詳細は/setup_ubuntu/gitflow\_on\_emacs.mdを参照すること。

### Using package lists
- `auto-comlete`  
補完

- `smooth-scroll`  
その名の通り

- `yatex`  
TeX用

- `popwin`, `popwin-yatex`  
`compile`の結果などを`C-g`とかで消せるようになる．

- `elscreen`  
emacsをタブエディタ化．タブごとにウィンドウ分割が維持できる．

- `smartparent`  
カッコなどの補完．リージョンに開きカッコを入力すればリージョンの初めと終わりにカッコを補完したりとか．

- `gnuplot-mode`  
プロットファイルのハイライトとか，実行とか．

- `pdf-tools`  
emacsの中でpdfを綺麗に開ける．検索とかダブルクリックでソースに移動とか．

- `tramp`  
デフォルトで入ってる．
ssh先のファイルをローカルのように扱える．

```bash
C-x C-f /scp:user@xxx.xxx.com:/home/user/hogehoge/huga.txt
```

- `web-mode`  
htmlのシンタックスハイライトとかインデントとかフォールディングとか．

### Required
- Ricty（フォント）

### TODO
- forward search( yatex + pdf-tools )の設定．
- 環境ごとに文字の大きさを設定する．

### Note
- Cocoaだとダメっぽい. Portsでインストールしたemacsなら可能.
- package lists にはおそらく抜けがある．

## 参考サイト

- [init-loader.elとpackage.elを導入して快適emacsライフ](http://qiita.com/catatsuy/items/5f1cd86e2522fd3384a0)

- [計算物理屋の研究備忘録 ](http://keisanbutsuriya.hateblo.jp/entry/2015/02/17/131824)

- [Emacsにyasnippetを導入する](http://vdeep.net/emacs-yasnippet)

- [Yasnippet-snippets](https://github.com/AndreaCrotti/yasnippet-snippets)
