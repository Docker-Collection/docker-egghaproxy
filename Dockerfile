FROM haproxytech/haproxy-alpine:2.7.8@sha256:466d8e53e23a69940e54bafaa9d8f6d18a69646d75f90475abb7f35dc0307c2f

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]