FROM haproxytech/haproxy-alpine:3.3.1@sha256:870e4e3e1d03c3108a9f8666d081e9c40bbf6bfce87f9228ad7c69472341f31c

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]