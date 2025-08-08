FROM haproxytech/haproxy-alpine:3.2.3@sha256:5d3cc21fef6875f0c9aa439a517b01a47cbd076c74e4546b89b3cf63511f20c8

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]