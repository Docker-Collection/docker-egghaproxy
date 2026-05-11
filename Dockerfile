FROM haproxytech/haproxy-alpine:3.3.10@sha256:5a18c64d89b879ab3751cec208422ecf48e334db0ca2fa2fe348a7e0c4c7ae70

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]