FROM haproxytech/haproxy-alpine:3.3.7@sha256:aec7129f24d7c5517015fb0882df961f8f3bbbef400d79b302c9abb2a573da58

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]