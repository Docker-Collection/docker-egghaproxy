FROM haproxytech/haproxy-alpine:2.8.0@sha256:859155b04aa870cf4de3cb151af6037a952559189c28d8abbf62af4feb92b00f

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]