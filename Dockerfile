FROM haproxytech/haproxy-alpine:2.6.6@sha256:1a67c3e53be977ba55b7c443d889e78f3a05dde160518c2ad1b0ead7d89a241f

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]