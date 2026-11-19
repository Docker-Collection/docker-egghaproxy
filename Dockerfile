FROM haproxytech/haproxy-alpine:3.4.8@sha256:2d61c4d00631ae8215fd16631bc7d7e35392ab36f25e96c586e871477b9703b2

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]