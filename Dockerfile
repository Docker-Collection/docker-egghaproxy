FROM haproxytech/haproxy-alpine:2.9.0@sha256:83469b4b833de47118b65ede57a126608c38425be37d8c1a86a1057542b071e7

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]