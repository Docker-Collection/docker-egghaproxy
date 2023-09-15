FROM haproxytech/haproxy-alpine:2.8.3@sha256:f62faf14c3b4496f6d6529adfec133545d2f89cd0ebbc655c5fa51880ac06d8e

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]