FROM haproxytech/haproxy-alpine:3.3.8@sha256:8c0b9f0088cce50d66201f39bdf37a1e3267b0d70f08fc73b75782cb0d588932

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]