FROM haproxytech/haproxy-alpine:3.4.0@sha256:04e0d2202baf2366d797819b836f952ca4e6254e3c059c42d8456bdc453c7f79

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]