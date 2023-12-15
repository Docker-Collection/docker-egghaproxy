FROM haproxytech/haproxy-alpine:2.9.1@sha256:e066abe260a150141e85a24653923aa978461516773c7e5e27c9b73a00a12981

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]