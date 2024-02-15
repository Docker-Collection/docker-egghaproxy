FROM haproxytech/haproxy-alpine:2.9.5@sha256:7f3dc8c7e031a46b0e0b65b7d1c41795f8ffcb1641089033fe2a5d2365332c95

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]