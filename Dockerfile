FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
	shadowsocks-v2ray-plugin \
&& rm -rf /var/lib/apt/lists/*

EXPOSE 80

ENV PASSWORD="CHANGEME!!"

CMD ss-server -s 0.0.0.0 -p 80 -m chacha20-ietf-poly1305 -k ${PASSWORD} -u --plugin ss-v2ray-plugin --plugin-opts server
