FROM haproxytech/haproxy-alpine:3.0.4@sha256:7e6e3c932040b03e1d1a9a1b04954f317f1263ca65d98df0621ed8f8af407405

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]