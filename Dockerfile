FROM haproxytech/haproxy-alpine:3.1.5@sha256:e631c7a60b7436aeca2c862c37e210a44c4d2c9d48da3937b01cf31f31ec3bbb

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]