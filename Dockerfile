FROM haproxytech/haproxy-alpine:2.7.2@sha256:12399e70a1296b568f50188d4c150cf1445748268a3eceaa3232629540b087ad

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]