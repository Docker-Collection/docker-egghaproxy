FROM haproxytech/haproxy-alpine:2.8.0@sha256:da00647f332a5251488ed5cc6d5143c15e2ac38e706fd3d78e6873f4362c90af

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]