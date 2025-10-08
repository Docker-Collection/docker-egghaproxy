FROM haproxytech/haproxy-alpine:3.2.6@sha256:35d6338f9a17a2f37edbb35e837a2140e3f7293042d25979a53ce10f5da06a3a

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]