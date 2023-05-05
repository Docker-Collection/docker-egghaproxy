FROM haproxytech/haproxy-alpine:2.7.8@sha256:c9df2a8877af9574f1d5e038fc308e3c252166051376be9ae9b1535d002bb13f

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]