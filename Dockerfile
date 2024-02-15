FROM haproxytech/haproxy-alpine:2.9.4@sha256:0e18fb30dfc190cfd7c1db75f02fcdf7f0fb0a80d3e447b4d5b24249b9c9a011

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]