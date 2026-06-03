FROM haproxytech/haproxy-alpine:3.4.0@sha256:386128d28016901b576b5ca615fd3044c4799633a6811316110adfbe92e15d74

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]