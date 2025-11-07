FROM haproxytech/haproxy-alpine:3.2.8@sha256:ac0b6133a630fd4db7cd973253ed7b5c33c4086481d9687344f66d1b1baf836a

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]