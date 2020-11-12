FROM alpine:latest
LABEL maintainer Thomas Ingvarsson <ingvarsson.thomas@gmail.com>

ARG BUILD_DATE
ARG VCS_REF
ARG TRANSMISSION_VERSION

LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.name="tingvarsson/transmission"
LABEL org.label-schema.description="Transmission image based on Alpine Linux"
LABEL org.label-schema.vcs-url="https://github.com/tingvarsson-docker/docker.transmission"
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.version=$TRANSMISSION_VERSION

RUN apk add --no-cache transmission-daemon

VOLUME /transmission
VOLUME /completed
VOLUME /incomplete
VOLUME /log
VOLUME /watch

ENV TRANSMISSION_HOME=/transmission

CMD ["/usr/bin/transmission-daemon", "-f"]
