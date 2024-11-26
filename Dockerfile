FROM haproxytech/haproxy-alpine:3.1.0@sha256:793d1f573379edc1a33cddb247c990f1b0dc0c464cc4cd111501553ae048dd0f

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]