FROM haproxytech/haproxy-alpine:3.1.7@sha256:96c134d69a0abe85e7ca385190385d8982355d5047c7eba47b19f18250115543

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]