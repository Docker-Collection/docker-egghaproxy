FROM haproxytech/haproxy-alpine:2.7.1@sha256:7418a47561bfd68b79b9ea0ddb9e9af7b28739f8b8f61fd675854e5c5c6fad1e

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]