FROM haproxytech/haproxy-alpine:3.4.7@sha256:3ca4b49a31fc1a26722bfa1beda339dbe9a84e2eb5ed5c7e74026375917a3ebd

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]