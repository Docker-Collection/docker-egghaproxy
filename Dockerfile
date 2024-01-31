FROM haproxytech/haproxy-alpine:2.9.4@sha256:4ac46fa438d153879be6469df5b91e1420102a73182730b2a61a6436be1de782

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]