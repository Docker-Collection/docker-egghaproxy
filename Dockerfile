FROM haproxytech/haproxy-alpine:3.0.2@sha256:82a25552ed6cc16da06f3969d66f7d0715192224598d440b48f174026ae1bbb7

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]