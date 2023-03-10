FROM haproxytech/haproxy-alpine:2.7.3@sha256:0d923b6cc11ac2f6557ab0c38e0d59a99bb5a6cb626986347bd423562474fa73

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]