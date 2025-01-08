FROM haproxytech/haproxy-alpine:3.1.2@sha256:033a674e686903d841a14890d4cfb5ffdc4444090c3106be163f3a0cb954d63b

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]