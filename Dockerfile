FROM haproxytech/haproxy-alpine:3.3.5@sha256:ead4028f023ba48752468a93d4c24e96f5a1edb1ebe67fe5cd3485ba1e7c498c

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]