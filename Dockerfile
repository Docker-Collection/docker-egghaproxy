FROM haproxytech/haproxy-alpine:2.8.4@sha256:887f70fe0f6c61b5c60e70b53b2e15169434287c41d1e417ef19b2c0555ef8ee

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]