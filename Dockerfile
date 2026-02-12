FROM haproxytech/haproxy-alpine:3.3.3@sha256:e778777fc42864c24a6a1a4c3afd042a07211b4d72b56acfe6791265b7a03625

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]