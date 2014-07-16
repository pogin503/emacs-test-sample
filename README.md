Emacs test sample
=================

#概要

Emacsでテストを実行するためにサンプル

###フォルダ構成

```
.
├── Makefile
├── myfile.el
└── test
    ├── myfile-test.el  #実行されるテスト
    └── run-test.el     #実行用の設定をしてテストを走らせるファイル
```

###実行

```
git clone git://github.com/pogin503/emacs-test-sample.git

make test
```
