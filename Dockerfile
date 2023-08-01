FROM haproxytech/haproxy-alpine:2.8.1@sha256:20f85bd950e8f5566aec72c6f9a2a05ca438073bd504d4191612cc6cabc793bf

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]