FROM haproxytech/haproxy-alpine:3.0.1@sha256:a871b10ba2d8d2f1d0229b7cb0d26a5ee05cb693066899558ca220cb8bbc9ff6

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]