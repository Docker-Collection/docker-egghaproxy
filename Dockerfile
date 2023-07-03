FROM haproxytech/haproxy-alpine:2.8.1@sha256:7b1d648434417c7a4a4d69949d5cb5dd73676e692df90508ad5f5613463445ef

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]