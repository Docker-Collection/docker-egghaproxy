FROM haproxytech/haproxy-alpine:3.3.2@sha256:5454b156b6846c89d24c06c3995c774eb71a0c8e6905e7b92f13286db366b8dd

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]