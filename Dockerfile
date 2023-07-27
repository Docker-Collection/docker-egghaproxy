FROM haproxytech/haproxy-alpine:2.8.1@sha256:3d694b442e1eedb7c6ab7550fe670f0819271cf4ae3d82f7dbff7d8fd1723fc4

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]