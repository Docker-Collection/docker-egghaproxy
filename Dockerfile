FROM haproxytech/haproxy-alpine:3.4.9@sha256:83a19ff61554ea2964343b9e4bbac9d1a7444dbcb712cc081cd5b2014b12f9ea

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]