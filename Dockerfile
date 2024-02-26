FROM haproxytech/haproxy-alpine:2.9.6@sha256:ab6f8acdc978e2de7f10b6c8cd39e1d3eb401ce2292862d0f010fa2e2ea5b8c9

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]