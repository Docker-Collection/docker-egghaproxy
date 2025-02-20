FROM haproxytech/haproxy-alpine:3.1.5@sha256:53f2970b5d18898e884e4457041cd844234470c95d367ca105aed010ed548823

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]