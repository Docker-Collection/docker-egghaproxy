FROM haproxytech/haproxy-alpine:2.9.2@sha256:ff9ded9dea736b99cb8b6318061dd4204263cd26f7ed4c534a85fd62186f3e30

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]