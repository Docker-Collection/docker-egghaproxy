FROM haproxytech/haproxy-alpine:3.3.4@sha256:3431ec6d26cce05d3919ec82d7ef502b351a59feb1b0fd35707c29a20f56c522

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]