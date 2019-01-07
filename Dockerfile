# Transmission
#
# Version latest

FROM alpine:latest
LABEL maintainer Thomas Ingvarsson <ingvarsson.thomas@gmail.com>

RUN apk add --no-cache transmission-daemon

VOLUME /transmission
VOLUME /completed
VOLUME /incomplete
VOLUME /log
VOLUME /watch

ENV TRANSMISSION_HOME=/transmission

CMD ["/usr/bin/transmission-daemon", "-f"]
