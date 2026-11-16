FROM haproxytech/haproxy-alpine:3.4.7@sha256:6478195a84f596e3dfadbf29c79bf64d026f71348511110d8ccb3dc89e9e69b1

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]