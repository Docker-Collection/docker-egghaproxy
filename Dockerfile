FROM haproxytech/haproxy-alpine:3.4.7@sha256:9ecfef391e125452b9f65237b97d34e4d85049e4bffbe456522cbdbd40c2d7dc

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]