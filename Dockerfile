FROM haproxytech/haproxy-alpine:3.3.2@sha256:51e9323bef0b9e89cfaf8cd461d4a2dfe6e2bc027a9d6cb4996fbed5c8fcde66

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]