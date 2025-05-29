FROM haproxytech/haproxy-alpine:3.2.0@sha256:e1cff8275577e7517014b37b73b1cbcaef851628ac376223b00d3e98df2d0d0f

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]