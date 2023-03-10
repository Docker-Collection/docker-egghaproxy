FROM haproxytech/haproxy-alpine:2.7.4@sha256:e70a4d03341822739f7a0e1bcca89f884f344f85e53a80866d17d2cc38af2add

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]