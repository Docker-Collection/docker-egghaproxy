FROM haproxytech/haproxy-alpine:2.9.0@sha256:23cd1bd76831a4c1fc2c1472e2b2d131282f6406e37dfe86f0272370519577e9

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]