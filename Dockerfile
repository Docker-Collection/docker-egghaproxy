FROM haproxytech/haproxy-alpine:2.7.0@sha256:1c379bd08979e028b608010d055298d74cade4fda1d08cdd66bd4fe5af6c4249

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]