FROM haproxytech/haproxy-alpine:3.4.1@sha256:0f596bd934ecb69815608826dce0d92936c7738dde2955cf4207bb3b0a770457

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]