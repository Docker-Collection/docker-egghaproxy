FROM haproxytech/haproxy-alpine:2.7.3@sha256:fb12325299d001d9f4ef4c2e4b80ab0f1d52b6ea6e9f601f74cb07411e386c6d

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]