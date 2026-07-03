FROM haproxytech/haproxy-alpine:3.4.2@sha256:f6f0282a0754b52b31c5aa8f1a61ce404ca2ec41a1d455b17f614bc61a69b1c3

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]