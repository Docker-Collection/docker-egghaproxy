FROM haproxytech/haproxy-alpine:2.7.1@sha256:58a0f3a25a37e06aa697a67971eb5f7834ba75c91cb2cd453e4831107809f0a9

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]