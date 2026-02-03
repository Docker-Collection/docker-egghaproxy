FROM haproxytech/haproxy-alpine:3.3.2@sha256:46168ce2cd83090f22521fa5b3f091eef50059e0d29de0f46a4f153f7b20b986

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]