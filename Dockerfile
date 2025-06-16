FROM haproxytech/haproxy-alpine:3.2.1@sha256:30f990c079494038058f43eb320e27cd43156f4ca4cfefc87f1caae33eced304

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]