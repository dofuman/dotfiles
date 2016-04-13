emacs config
===

c/c++, python, latex  
  markdown(Atomに移行した)

Getting Started
===

```sh
cd $ANY_DIR/
git clone https://github.com/dofuman/dotfiles.git
cd ~
ln -s $ANY_DIR/dotfiles/.emacs.d/ ~/
```

Dependencies
===
一部パッケージの依存関係で，以下の要件を満たす必要があります
 - emacs 24.4.1 or later  
  `M-x emacs-version` or `emacs --version`で確認．  
 - git 2.5.1 or later  
  `git --version`でversion確認．  

また，次のパッケージがインストールされている必要があります．  

 - migemo  

  ```sh
	sudo apt-get install cmigemo ruby ruby-dev
	```

 - jedi    
   ```sh
   sudo apt-get install python-pip  
   sudo pip install virtualenv  
   ```
 - markdown  
   `sudo apt-get install markdown`  

 - irony	   
   ```sh
   sudo apt-get install libclang-dev
   ```

emacs上で実行  

```
M-x jedi:install-server
M-x irony-server-install
```

init.el
===
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

elisps
===

|名前|command|説明|  
|:--|:--|:--|  
|magit|C-x g|gitの管理|  
|helm|M-x helm-*|補完，選択補助．設定下elispはほぼhelmの管理下|  
|elscreen|C-z *|タブ機能追加|  
|powerline|?|GUI強化|  
|swoop|M-i|検索機能強化|  
|company|?|補完機能|  
|undotree|M-/(redo), C-x u(tree)|編集履歴管理|  
|popwin|?|window管理|
|smoothscroll|?|スクロール管理|
|migemo|?|日本語をアルファベットのローマ字で検索可能|
|flycheck|C-c ! *|スペル，文法チェック（C++）|
|irony|?|C/C++IDE機能|
|eldoc|?|C/C++IDE機能|
|yasnippet|C-x i *(i,n,v)|snippets|
|jedi|?|pythonIDE機能|
|tramp|C-x C-f|リモートのファイルを扱える|

C/C++ - mode
===
`20_cpp.el`に設定を記述．
- `yasnippet`  
emacsにIDE的な機能追加．様々なテンプレート(スニペット)をTAB で呼び出せる．
	- 既存スニペットを挿入する  
	  `C-x i i`  

	- 新規スニペットを作成するバッファを用意する．  
	  `C-x i n`  

	- 既存スニペットを閲覧・編集する  
	  `C-x i v`  

- cc-mode    
  c/c++/の設定を管理できるメジャーモード

- flycheck  
  ironyと連携して使う．
  CMakeLists.txtに
  ```
  set(CMAKE_CXX_FLAGS "-std=c++11 -Wall")
  set(CMAKE_EXPORT_CO，MPILE_COMMANDS ON)
  ```
  を追加し，`cmake`すると， `compile_commands.json`が生成される．
  ```shまだ
  ln -s foo/build/compile_commands.json foo/src/
  ```
  として，シンボリックリンクをソースファイルと同じ階層におけば，  
  flycheck-ironyはcompile_commands.jsonを読み込んで文法チェックするので，  
  標準ライブラリ以外を（例:PCLやQt）使う時も.dir-locals.elなどでinclude_pathを通さなくても大丈夫．  
  CMakeLists.txtでは`find_package()`などでパスを通す必要はある．

- irony  
  C/C++向けのIDE機能を提供する．company,flycheck,eldocと連携．
  - Code completion
  - Diagnostic reporting
  - Integration

Python-mode
===
`20_python.el`に設定を記述．

- jedi  
  python向けのcode completion機能を提供  

- yasnippet  
  c/c++と同様

- flycheck  
  設定はまだ

TODO
===

- pythonのflycheckの設定
- ソースツリーを表示したければ何かしら追加する．

## 参考サイト

- [init-loader.elとpackage.elを導入して快適emacsライフ](http://qiita.com/catatsuy/items/5f1cd86e2522fd3384a0)

- [計算物理屋の研究備忘録 ](http://keisanbutsuriya.hateblo.jp/entry/2015/02/17/131824)

- [Emacsにyasnippetを導入する](http://vdeep.net/emacs-yasnippet)

- [Yasnippet-snippets](https://github.com/AndreaCrotti/yasnippet-snippets)

- [Emacsの共通設定をgitで管理する](http://keisanbutsuriya.hateblo.jp/entry/2015/02/17/131824)

- [C++11時代のEmacs C++コーディング環境](http://qiita.com/alpha22jp/items/90f7f2ad4f8b1fa089f4)

- [helm.el config](http://d.hatena.ne.jp/a_bicky/20151123/1448285411)
