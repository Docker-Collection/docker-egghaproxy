FROM haproxytech/haproxy-alpine:3.1.1@sha256:0d30311812c20bc5ba74f1565b1ad0c60632fa19e7088d62dd7325aab144e69d

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]