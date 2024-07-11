FROM haproxytech/haproxy-alpine:3.0.3@sha256:82b52c46adeaa9dee7dad408707b5761a154ff473021b4e9c26c2f6ceb7ca16a

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]