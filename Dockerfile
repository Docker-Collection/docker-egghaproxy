FROM haproxytech/haproxy-alpine:3.2.9@sha256:56bb08a5dae56bbdb8f8d3b90fe0be70c33692da962ae35c9e733bccb1eedfd1

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]