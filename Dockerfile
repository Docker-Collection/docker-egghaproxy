FROM haproxytech/haproxy-alpine:3.4.3@sha256:b4e500ad51c500ff983127ce49307684e4a93c7c8c145dcf8fce0f679376874f

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]