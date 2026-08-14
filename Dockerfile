FROM haproxytech/haproxy-alpine:3.4.3@sha256:7a3ef2dd8b5b27defc8c7c0dfcded9c2e54d0bbe0b9ac80dc903b0b4129452f9

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]