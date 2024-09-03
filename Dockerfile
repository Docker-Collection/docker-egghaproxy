FROM haproxytech/haproxy-alpine:3.0.4@sha256:3bb906e5635246ff9efc254965b53a2fb36ca00d850837446fee9f5b7528b516

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]