FROM haproxytech/haproxy-alpine:3.0.5@sha256:448bc0c22e10c9ee78b3797c86f2a131dd687d8b415deab7456902350b10e691

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]