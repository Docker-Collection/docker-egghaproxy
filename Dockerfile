FROM haproxytech/haproxy-alpine:3.1.4@sha256:80636c08e45140fb771fbb56bca9b5d7784078024a0206593dd504feed18515b

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]