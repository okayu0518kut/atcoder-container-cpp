# atcoder-container-cpp
g++を使うためのリポジトリ

# 使い方
以下のコマンドで，カレントディレクトリのDockerfileからimageを作成
```
docker build -t atcoder-container-cpp .
```

カレントディレクトリ内でc++のプログラムを作る(例えば`fuga/hoge.cpp`に書く)．

以下のコマンドで，コンパイル
```
./compile.sh fuga/hoge.cpp
```

カレントディレクトリに実行可能ファイル`a.out`ができます．

実行
```
./a.out
```
