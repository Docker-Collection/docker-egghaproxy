FROM haproxytech/haproxy-alpine:3.2.9@sha256:ce2baf3bc166dae7feafd686c9044e31450f931c12680db554f01add711505ef

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]