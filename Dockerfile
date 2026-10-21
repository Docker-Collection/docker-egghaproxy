FROM haproxytech/haproxy-alpine:3.4.7@sha256:f398e356653401e34e967cbd3b2043cd616295c3fe289fa0e90a47edf9866239

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]