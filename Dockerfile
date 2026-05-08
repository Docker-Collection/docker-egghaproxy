FROM haproxytech/haproxy-alpine:3.3.9@sha256:7e855fbb15a4980398d7785f424a20cf10768e81db932b2cc3bc66d680edd909

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]