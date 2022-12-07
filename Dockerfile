FROM haproxytech/haproxy-alpine:2.7.0@sha256:69785a26e91296a0ab9cea19ede4bedfdef422322541f5501147d6b468aa76b4

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]