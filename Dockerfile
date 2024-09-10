FROM haproxytech/haproxy-alpine:3.0.4@sha256:116c7ab11b8ad7ca75d631adaa9c765237571a5d337571b37543f010408be7c5

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]