FROM haproxytech/haproxy-alpine:3.4.6@sha256:745c0a3e49ba5dc7a18b9370c01605f06e89b31ef6e83a9166cfb7e5a7153f94

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]