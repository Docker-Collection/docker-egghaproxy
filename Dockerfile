FROM haproxytech/haproxy-alpine:3.0.2@sha256:f1914b54ecd902de2b881661eba0bafc7c3f3372a9807b056e3b2216f0174ae2

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]