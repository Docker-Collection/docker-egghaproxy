FROM haproxytech/haproxy-alpine:2.8.3@sha256:2733531485b9b374f0285d70a72e722b7271c700bd91390f311c59e2cc5f9e1b

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]