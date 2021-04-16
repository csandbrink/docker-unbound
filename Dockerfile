FROM alpine:edge

MAINTAINER csandbrink

RUN apk --update --no-cache add unbound=1.13.1-r1

COPY unbound.conf root.hints /etc/unbound/

VOLUME /etc/unbound

ENTRYPOINT ["unbound", "-d"]
