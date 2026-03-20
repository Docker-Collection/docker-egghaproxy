FROM haproxytech/haproxy-alpine:3.3.6@sha256:e29ab2044a079701dc3dc47c5087e75626b9a790bdee4224cf339f0cd37922a1

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]