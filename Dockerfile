FROM haproxytech/haproxy-alpine:2.7.3@sha256:11d0680e8229bb63c0b43ed85d6d3564196ae3c82e8969f55f74fa5a13840232

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]