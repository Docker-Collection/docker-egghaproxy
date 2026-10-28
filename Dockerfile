FROM haproxytech/haproxy-alpine:3.4.7@sha256:cb9abc8213d860b5e5e335c92449f8602dc4ce113483d34d212c3bca47a90eef

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]