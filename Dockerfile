FROM haproxytech/haproxy-alpine:3.3.6@sha256:4b2da4adb652487a1aa1bb7fdacf5df1088d2c7d21302fcce738812d0d2fc453

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]