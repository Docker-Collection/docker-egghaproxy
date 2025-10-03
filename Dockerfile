FROM haproxytech/haproxy-alpine:3.2.6@sha256:664469c097388b2668a54a28918a277bd13854f8fe8c5b3457ba1ba484908791

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]