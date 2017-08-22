# emacs config

c/c++, python, latex  


- 初回起動時

以下を実行する.

```

M-x jedi:install-server
M-x irony-server-install
```

- init.el

initファイルはinit-loader.elを利用して,分割して管理する.
`.emacs.d/inits/`以下に各種設定用ファイルを配置する.

- flycheck  

C,C++で書くときに外部ライブラリを使用する場合,
CMakeLists.txtに

```cmake
set(CMAKE_CXX_FLAGS "-std=c++11 -Wall")
set(CMAKE_EXPORT_CO,MPILE_COMMANDS ON)
```

を追加する.`cmake`すると, `compile_commands.json`が生成され,

```shell
ln -s foo/build/compile_commands.json foo/src/
```

を実行し,シンボリックリンクをソースファイルと同じ階層におけば,
flycheck-ironyはcompile_commands.jsonを読み込んで文法チェックする.
cmake側で外部ライブラリへのパスが通っている必要はある.


