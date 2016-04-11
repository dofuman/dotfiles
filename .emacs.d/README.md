# emacs config
***

### Dependencies  
一部パッケージの依存関係で，以下の要件を満たす必要があります
 - emacs 24.4.1 later  
 - git 2.5.1 later  
emacs上で `M-x emacs-version`またはターミナルから`emacs --version`でemacsのversion確認．  
`git --version`でgitのversion確認 ．  

また，次のパッケージがインストールされている必要があります．

 - cmigemo  
	`sudo apt-get install cmigemo`  

 - jedi  
   ```sh
   sudo apt-get install python-pip  
   sudo pip install virtualenv  
   ```
 - markdown  
   `sudo apt-get install markdown`  
   
emacs上で実行  

```emacs
M-x jedi:install-server
M-x irony-server-install
```

### init.el

initファイルはinit-loader.elを利用して，分割して管理する．
`.emacs.d/inits/`以下に各種設定用ファイルを配置する．

`~/.emacs.d/inits`ディレクトリのファイル名は以下の規則に従う．

- 環境に依存しない設定はファイル名の最初に2桁の数字をつける．

	- 番号は優先度で00が最初に読み込まれ，99が最後に読み込まれる． 
	- 同じ数字をつけても良い．
	
- 環境依存の設定はそれぞれの環境のプレフィックスをファイル名の最初につける．

|環境|prefix|  
|:--|:--|  
|Linux|linux|  
|emacs nw|nw|  

### Using package lists

- `elscreen`  
emacsをタブエディタ化．タブごとにウィンドウ分割が維持できる．`09_elscreen.el`

	- prefix キー  
	  `C-z`  
  
- `smartparent`  
カッコなどの補完．リージョンに開きカッコを入力すればリージョンの初めと終わりにカッコを補完したりとか．
他の補完機能と競合することもある．

- `gnuplot-mode`  
プロットファイルのハイライトとか，実行とか．`20_gnuplot.cl`

- `pdf-tools`  
emacsの中でpdfを綺麗に開ける．検索とかダブルクリックでソースに移動とか．`20_pdf.el`

- `tramp`  
デフォルトで入ってる．
ssh先のファイルをローカルのように扱える．

	```bash
	C-x C-f /scp:user@xxx.xxx.com:/home/user/hogehoge/huga.txt
	```
### C/C++ - mode

`20_cpp.el`に設定を記述．

- `cc-mode`
  c/c++/objc/javaなどの設定をすべてできるメジャーモード

- `flycheck`
gcc, clang, cppcheckがdefaultのチェッカーとして使われる．

checkerの変更は`M-x flycheck-select-checker`
helmからのアクセスは`M-x helm-flycheck`
	- `flycheck` はプロジェクトごとに設定されたmakefileを使わずにに構文チェックする関係上，standardなheader file以外は，扱えない．そこで，flycheckでは，各projectのrootに`.dir-locates.el`を配置し，そこにプロジェクトで使用するlibrary pathを記述することで，headerfileを正しく認識してくれる．

```elisp
;;; Directory Local Variables
;;; See Info node `(emacs) Directory Variables' for more information.

((c-mode .
         ( (flycheck-gcc-include-path . ("/local/include/dir/1" "/local/include/dir/2") ) )
         ))
```

- `symantic`
buildinされてる．.cppファイルを開いたバッファで`M-x symantic-mode`を
実行すれば，コードの解析をしてくれる．`(semantic-mode 1)`で常駐．

- ``

- `iedit`   
c/c++-modeの拡張機能.

	- prefix  
	`C-c ;`  

- `yasnippet`  
emacsにIDE的な機能追加．様々なテンプレート(スニペット)をTAB で呼び出せる．
	- 既存スニペットを挿入する  
	  `C-x i i`  

	- 新規スニペットを作成するバッファを用意する．  
	  `C-x i n`  

	- 既存スニペットを閲覧・編集する  
	  `C-x i v`  

### TODO
- forward search( yatex + pdf-tools )の設定．
- 環境ごとに文字の大きさを設定する．

### Note
- IDE機能を順次追加．


## 参考サイト

- [init-loader.elとpackage.elを導入して快適emacsライフ](http://qiita.com/catatsuy/items/5f1cd86e2522fd3384a0)

- [計算物理屋の研究備忘録 ](http://keisanbutsuriya.hateblo.jp/entry/2015/02/17/131824)

- [Emacsにyasnippetを導入する](http://vdeep.net/emacs-yasnippet)

- [Yasnippet-snippets](https://github.com/AndreaCrotti/yasnippet-snippets)

- [Emacsの共通設定をgitで管理する](http://keisanbutsuriya.hateblo.jp/entry/2015/02/17/131824)

- [c/c++-mode IDE](http://futurismo.biz/archives/3071)

- [helm.el config](http://d.hatena.ne.jp/a_bicky/20151123/1448285411)
