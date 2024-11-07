FROM haproxytech/haproxy-alpine:3.0.6@sha256:a20cf20d627470419a14fc49e4ed82d367334414b0544b22e08080dc053849d1

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]