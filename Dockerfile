FROM haproxytech/haproxy-alpine:3.3.10@sha256:0d5cbd567da46b15e29d5e6176f90a0b3403c88dbccf2e5268da04f14a863cb7

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]