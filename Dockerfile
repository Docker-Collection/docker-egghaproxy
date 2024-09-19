FROM haproxytech/haproxy-alpine:3.0.5@sha256:5c97646f1aa9261028421faaef067f49d2ece18b6e08b8d935cb42bf2c10e74b

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]