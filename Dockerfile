FROM haproxytech/haproxy-alpine:2.6.6@sha256:5c8e88206ac94099f5746a544848f999a73d0b1f2ecdf0ad15491cae01c12702

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]