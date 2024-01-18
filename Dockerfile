FROM haproxytech/haproxy-alpine:2.9.3@sha256:ac0ea1bae303004a3c3323830e643b2b931569816cc440bce99f5ead6988db16

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]