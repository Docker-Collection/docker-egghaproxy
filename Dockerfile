FROM haproxytech/haproxy-alpine:3.4.6@sha256:784d71c9a235da522dc6b1fea5e29c7e40739c3c65bb326dd669c2274fee5ecd

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]