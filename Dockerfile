FROM haproxytech/haproxy-alpine:3.4.7@sha256:c9d745967c0651adbfdf0150a739a833a790f3b4eced1758374a6b0f3820c8d9

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]