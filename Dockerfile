FROM haproxytech/haproxy-alpine:3.4.5@sha256:0b568145bf67a3c2932b18c0b36abc271ab85bfd379ebf5bc49a341b3258fe09

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]