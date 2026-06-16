FROM haproxytech/haproxy-alpine:3.4.0@sha256:87121696e0190f81230f6223ff5e9ceab14bbbdfbe8da0f7151235d8c420e08f

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]