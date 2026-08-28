FROM haproxytech/haproxy-alpine:3.4.4@sha256:d7575dd23b16ce58a2331df535c9df1555342c06f5b8fc481ebf159bc8f1e610

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]