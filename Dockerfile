FROM haproxytech/haproxy-alpine:3.1.3@sha256:de466f878065492faed39981928a2ac6a94034ee1e7b2252121d341dd452b2b1

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]