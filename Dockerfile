FROM haproxytech/haproxy-alpine:3.4.1@sha256:8e9908e83337e95e83500a22ed950c8057feca69ce925b6a3a25e27168773ce0

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]