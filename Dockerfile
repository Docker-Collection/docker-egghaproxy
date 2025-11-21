FROM haproxytech/haproxy-alpine:3.2.9@sha256:2fee95a1f646c0b58a16d2428ada2235cafa109e0a4283adebd8b0326b3665d9

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]