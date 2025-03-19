FROM haproxytech/haproxy-alpine:3.1.5@sha256:69eb4802f4e21e75e64caed27137b7481feb768a57c976cb37616bd1eaed46c2

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]