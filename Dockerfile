FROM haproxytech/haproxy-alpine:2.6.6@sha256:c9e14f5e1b3ef186e44fe404a2f5cc0b005ba6ff82fccbd9a5947a717961783c

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]