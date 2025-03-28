FROM haproxytech/haproxy-alpine:3.1.6@sha256:8aecdf2cfe62999f88c1c1a9a698b1fb0b373c80417e2b097c6af98f9b727490

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]