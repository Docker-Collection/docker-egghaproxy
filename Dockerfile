FROM haproxytech/haproxy-alpine:3.1.6@sha256:72681e10357c5f766ccfea6163c6d74d3b98d2cf683963422a685df6216ad0cb

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]