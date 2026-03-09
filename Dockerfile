FROM haproxytech/haproxy-alpine:3.3.4@sha256:5000069d55c11c26f451feba71e72b570a1e51af431efb7c341ec25e7a3428da

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]