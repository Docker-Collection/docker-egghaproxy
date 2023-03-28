FROM haproxytech/haproxy-alpine:2.7.6@sha256:05928a9e5518411c9e36e4277cda3447ac6707090a5a33d322ad2697317fac08

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]