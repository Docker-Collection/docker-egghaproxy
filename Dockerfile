FROM haproxytech/haproxy-alpine:2.7.7@sha256:0205d726bb2227b7f24507b4ab8a7fb30f34ba673f5dc090e6891099bd8c9d26

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]