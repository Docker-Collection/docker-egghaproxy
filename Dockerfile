FROM haproxytech/haproxy-alpine:3.4.4@sha256:1fe3f201ebb57f66134ea557927e83d26d7050fe2664be4181e2107381f795cb

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]