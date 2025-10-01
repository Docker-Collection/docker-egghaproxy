FROM haproxytech/haproxy-alpine:3.2.5@sha256:75695bf8dec280a041be1a2c77086a56fb986959074beb6be110964d69c1cc88

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]