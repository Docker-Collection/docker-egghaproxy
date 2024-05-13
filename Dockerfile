FROM haproxytech/haproxy-alpine:2.9.7@sha256:8935a52ff9b6bf4c3610787629c6c439f2f0c568d4106b395527a79c702a3a34

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]