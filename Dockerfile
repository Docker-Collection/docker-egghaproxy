FROM haproxytech/haproxy-alpine:3.0.5@sha256:0c67c5e8813089f6e6d228a01901cce528daed87d6330eb3109aafd593585782

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]