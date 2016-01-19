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

### Using package lists

- `elscreen`  
emacsをタブエディタ化．タブごとにウィンドウ分割が維持できる．  
	- prefix キー  
	  `C-z`  
  
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

- `yasnippet`  
emacsにIDE的な機能追加．様々なテンプレート(スニペット)をTAB で呼び出せる．
	- 既存スニペットを挿入する  
	  `C-x i i`  

	- 新規スニペットを作成するバッファを用意する．  
	  `C-x i n`  

	- 既存スニペットを閲覧・編集する  
	  `C-x i v`  

### Required  
 - emacs 24.4.1  
 - git 2.5.1  

`M-x emacs-version`でemacsのversion確認．  
`git --version`でgitのversion確認 ．  

### TODO
- forward search( yatex + pdf-tools )の設定．
- 環境ごとに文字の大きさを設定する．

### Note
- IDE機能を順次追加．基本的にemacsの起動は遅くなるので，emacsを常駐させるのが望ましい．  


## 参考サイト

- [init-loader.elとpackage.elを導入して快適emacsライフ](http://qiita.com/catatsuy/items/5f1cd86e2522fd3384a0)

- [計算物理屋の研究備忘録 ](http://keisanbutsuriya.hateblo.jp/entry/2015/02/17/131824)

- [Emacsにyasnippetを導入する](http://vdeep.net/emacs-yasnippet)

- [Yasnippet-snippets](https://github.com/AndreaCrotti/yasnippet-snippets)
