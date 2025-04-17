FROM haproxytech/haproxy-alpine:3.1.7@sha256:fa6c00b6286a453d2b8ba786792ff23cf6280d75135b5b14310a7cbad48119b5

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]