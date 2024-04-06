FROM haproxytech/haproxy-alpine:2.9.7@sha256:5fe93640c958b11e78478161e2522137472bddb491709fdcf99edd5d85f6ea85

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]