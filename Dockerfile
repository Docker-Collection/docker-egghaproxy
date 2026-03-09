FROM haproxytech/haproxy-alpine:3.3.5@sha256:dc1b441e43d77fa0376195da53f4dd65e40c5f3660ced65e78111428c5df1cb5

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]