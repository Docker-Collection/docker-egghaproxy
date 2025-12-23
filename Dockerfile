FROM haproxytech/haproxy-alpine:3.3.1@sha256:db801a279948c777a8ad3d050105777694a106a1076360fce6ba6713d75501ac

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]