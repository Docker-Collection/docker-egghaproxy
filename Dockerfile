FROM haproxytech/haproxy-alpine:3.3.9@sha256:e6bbdbf0d29b3f0d1701d4a107a83dd45bcad501800cec3673e7649a16e58adf

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]