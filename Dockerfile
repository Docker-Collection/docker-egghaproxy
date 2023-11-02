FROM haproxytech/haproxy-alpine:2.8.3@sha256:1eac8973a787269e2bb343cbd41249798427f00640fb1803029711486381269c

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]