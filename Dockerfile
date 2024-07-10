FROM haproxytech/haproxy-alpine:3.0.2@sha256:3e42e90ba16b02de0d026dddcb7362e8a83feb1f27c1442d5ab06b0e7f66dd4b

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]