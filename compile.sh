#!/bin/bash

if [ "$#" -eq 1 ]
then
	docker run --rm -v $(pwd):/data atcoder-container-cpp g++ -Wall -g -fsanitize=undefined -D_GLIBCXX_DEBUG "$1"

#-Wallは警告を多めに出す
#-gはdebug用の付加情報を載せる
#-fsanitize=undefinedは未定義動作の検出
#整数のoverflowが発生したときとかを教えてくれる
#-D_GLIBCXX_DEBUGはC++のSTLのあたりのdebug用機能の有効化
#vectorの範囲外アクセスとかを教えてくれる

else 
	echo "argument error"
	echo "usage : $0 [cpp file]"
fi
