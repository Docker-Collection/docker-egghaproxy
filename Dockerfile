FROM haproxytech/haproxy-alpine:3.1.5@sha256:3111b3b96bd8c8a3c88bfcb1cd4f6aa9325f83eaa31352de2600d970a47f10cc

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]