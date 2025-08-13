FROM haproxytech/haproxy-alpine:3.2.4@sha256:cef4e873d8f2c5f12d5a590036b16f34499b883a74e62269a1a14558e82d8333

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]