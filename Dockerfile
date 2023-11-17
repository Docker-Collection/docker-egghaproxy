FROM haproxytech/haproxy-alpine:2.8.4@sha256:53a4f0fdb7c03ded00a468945e009db074d350ea9e637583901c33e7774cf5e3

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]