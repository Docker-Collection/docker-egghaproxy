FROM haproxytech/haproxy-alpine:2.7.8@sha256:655f2368cbb985077f9a7ffd2d88ecf5ad9bf4b0b7fdf1a1ceb8242bcf5edd68

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]