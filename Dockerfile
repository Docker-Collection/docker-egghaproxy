FROM haproxytech/haproxy-alpine:3.0.5@sha256:97eb0dd2b1ed4013b49fcb3092afcc166974a3d532d1562b1be6c7b4528805f5

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]