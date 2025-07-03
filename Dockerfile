FROM haproxytech/haproxy-alpine:3.2.2@sha256:8caaea0392ae76ebe42a8266ef3416d4b965a889702294c463989bf1794bfa4c

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]