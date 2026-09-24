FROM haproxytech/haproxy-alpine:3.4.5@sha256:907ff654f5bd740f94ff190f217c6fdc5f856fdd883f5c127ea8de9b2ce0df07

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]