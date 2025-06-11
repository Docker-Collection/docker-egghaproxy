FROM haproxytech/haproxy-alpine:3.2.1@sha256:bf8f5e91ad73df52a594cfe45329fca19fdd912dd2dce6f19b51a0bf7fd836b1

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]