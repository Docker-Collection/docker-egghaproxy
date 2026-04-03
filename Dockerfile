FROM haproxytech/haproxy-alpine:3.3.6@sha256:c1a1350f0db9e62fd8b8ca6bf6184913427b0c307bf6b184a91ae038ac700a6e

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]