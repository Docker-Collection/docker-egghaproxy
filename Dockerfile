FROM haproxytech/haproxy-alpine:3.3.4@sha256:ab46b47d9a304c5b2968ea45d8eeff922eab08901f64eda868e0dde70ec7ce49

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]