FROM haproxytech/haproxy-alpine:2.6.6@sha256:14e4afa90dfdabf9d2ade464832bcd515c79d81d73d807a76aeca04feb4bbef8

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]