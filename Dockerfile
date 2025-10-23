FROM haproxytech/haproxy-alpine:3.2.7@sha256:6633aaa5578e3aebe6a47bf8bfdc4db390f76486977c04c6a48728a1afe4b73a

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]