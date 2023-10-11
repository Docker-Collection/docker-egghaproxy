FROM haproxytech/haproxy-alpine:2.8.3@sha256:8fa674ac92401b14c943050cce00401e962450c89461ae64082c3ce269f80a00

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]