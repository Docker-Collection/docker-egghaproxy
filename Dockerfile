FROM haproxytech/haproxy-alpine:3.1.3@sha256:37bbfed9b910a381d11d1e3ec4f7dd708200b79ae66b4174dc602eb8efc49c51

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]