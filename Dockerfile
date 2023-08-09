FROM haproxytech/haproxy-alpine:2.8.2@sha256:29f4c640a23750ac4e420a2f75d9064ff9d43c6abbe80484e5a1e6966eb3843a

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]