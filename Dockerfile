FROM haproxytech/haproxy-alpine:3.2.5@sha256:1e5b31a9453400f3e1b0701c357e5a2d6f84b44fe26385b64403b1ff957f7d24

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]