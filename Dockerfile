FROM haproxytech/haproxy-alpine:3.2.5@sha256:62a4aec7845aa5d8278f45f7b448b5ebd836db8b7f12335da0cd2250067ff291

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]