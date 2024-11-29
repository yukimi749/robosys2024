# robosys2024
ロボットシステム学授業用

## plusコマンド
![test](https://github.com/yukimi749/robosys2024/actions/workflows/test.yml/badge.svg)

標準入力から読み込んだ数字を足す。

## monthコマンド
![test](https://github.com/yukimi749/robosys2024/actions/workflows/monthtest.yml/badge.svg)

標準入力から数字を読み込み1月から12月までの月名を英語で表示する。

## ディレクトリ構成
```
robosys2024
├── LICENSE
├── README.md
├── month
├── monthtest.bash
├── plus
└── test.bash
```
## 使用方法
- リポジトリをクローン  
`git clone https://github.com/yukimi749/robosys2024.git`

- ディレクトリに移動  
`cd robosys2024`

- 実行権限を追加  
`chmod +x plus`  
`chmod +x month`

- robosys2024のディレクトリでコマンドを実行する

### 実行方法
- plusコマンド  
  - `seq <数字> | ./plus`

- monthコマンド
  - `./month`
  - <1から12までの数字>

### 実行例
- plusコマンド
```
$ seq 5 | ./plus
15       ＜出力結果
```
- monthコマンド
```
$ ./month
1        ＜入力
January  ＜出力結果
```
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
