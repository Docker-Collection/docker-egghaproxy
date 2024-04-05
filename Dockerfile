FROM haproxytech/haproxy-alpine:2.9.6@sha256:f3d312e224611a275b2d3ab42c8a637a25827be1e35987ae8f4a567eac093eef

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]