FROM haproxytech/haproxy-alpine:3.4.9@sha256:35ca5d45b365694f570eccf369634d60548892fb18186858348cc5c0d15a6927

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]