FROM haproxytech/haproxy-alpine:2.7.2@sha256:9fba38aff722e201d69e177827c101d913579d9428477bd0a60546b755be91f4

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]