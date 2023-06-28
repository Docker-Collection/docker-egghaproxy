FROM haproxytech/haproxy-alpine:2.8.0@sha256:8951be4b4e1c6126f8dd1ec7a26eeaa1a3a0187d4700a0ea49208beef5fc2a06

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]