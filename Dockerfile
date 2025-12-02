FROM haproxytech/haproxy-alpine:3.3.0@sha256:15d05f508e1c7a072fd888937c6f1f6a7d952b10c3e39c0708ddaf10b2da8205

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]