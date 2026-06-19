FROM haproxytech/haproxy-alpine:3.4.0@sha256:329cf83091d301c83f214c28777611278fa2231370d14b37f9f7d0ffe2cbac33

RUN adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]