FROM haproxytech/haproxy-alpine:3.3.1@sha256:6f868e49aa11a333b534c2a22c98a69989db9f2d5099cd009a4f7d088a846616

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]