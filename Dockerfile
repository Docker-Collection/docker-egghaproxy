FROM haproxytech/haproxy-alpine:3.0.1@sha256:bddad7921757abd53a1cc1a1726b3db1694f2aa6dc5643428f5ff00026868a22

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]