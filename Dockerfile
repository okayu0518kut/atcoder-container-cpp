# ベースイメージの指定
FROM debian:bullseye-slim

RUN apt update \
	&& apt install -y \
	build-essential \	
	&& apt clean \
	&& mkdir /data

# コンテナ内で作業するディレクトリの設定
WORKDIR /data

