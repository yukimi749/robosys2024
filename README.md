# robosys2024
ロボットシステム学授業用

## plusコマンド
![test](https://github.com/yukimi749/robosys2024/actions/workflows/test.yml/badge.svg)

標準入力から読み込んだ数字を足す。

## monthコマンド
![test](https://github.com/yukimi749/robosys2024/actions/workflows/monthtest.yml/badge.svg)

標準入力から数字を読み込み1月から12月までの月名を英語で表示する。

## 使い方
- リポジトリをクローン
```
git clone git@github.com:yukimi749/robosys2024.git
```
- ディレクトリに移動  
`cd robosys2024`

- plusコマンド
  - 実行方法   
`seq <数字> | ./plus`
- monthコマンド
  - 実行方法  
標準入力を使用し次のコマンドを入力する  
`./month`
  - 1から12までの数字を標準入力する

## 必要なソフトウェア
- Python
  - テスト済みバージョン：3.7~3.10

## テスト環境
- Ubuntu 22.04.5 LTS

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージのコードの一部は，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - [ryuichiueda/slides_marp/robosys2024](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024)
- © 2024 Yukimi Miyahara
