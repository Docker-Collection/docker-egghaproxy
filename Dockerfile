FROM haproxytech/haproxy-alpine:2.8.3@sha256:194984c02c5119f7c21b4072232dce1fdbf5f09b8357150bf83a01ee57ef8154

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]