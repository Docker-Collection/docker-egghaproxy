FROM haproxytech/haproxy-alpine:2.7.8@sha256:58897151fc312a6bc249b7846a99294c01773d87a1fa39bf8c854c602de96ee5

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]