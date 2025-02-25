FROM haproxytech/haproxy-alpine:3.1.5@sha256:72996d271eb0fc9146262625e67f0b368a1eb3f33b806e708966da41ce0f34a7

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]