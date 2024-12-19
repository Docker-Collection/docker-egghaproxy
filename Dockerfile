FROM haproxytech/haproxy-alpine:3.1.1@sha256:67d13ea9235dcf4bda7024d500361f635df9ecb545f2f4e1b5266710f577ea10

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]