FROM haproxytech/haproxy-alpine:2.7.5@sha256:76f3b2cb2d2a7c28e639b4de2c8fd8663c6a64b454206a77bdf67135f80aca4d

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]