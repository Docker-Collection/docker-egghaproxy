FROM haproxytech/haproxy-alpine:3.0.0@sha256:f8531812006d000a24e1de1c60384438e746ce54893d6712cd59e632ccd9ef7d

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]