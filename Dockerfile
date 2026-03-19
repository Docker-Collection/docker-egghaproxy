FROM haproxytech/haproxy-alpine:3.3.5@sha256:55001c6e55d35f0937773a5e7ca5fe97d7f6b57f5126a3dbeb4ea2cbf8c73a94

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]