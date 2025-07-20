FROM registry.access.redhat.com/ubi9-minimal
LABEL maintainer Thomas Ingvarsson <ingvarsson.thomas@gmail.com>

RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm \
    && microdnf install -y transmission-daemon \
    && microdnf clean all

VOLUME /transmission
VOLUME /completed
VOLUME /incomplete
VOLUME /log
VOLUME /watch

ENV TRANSMISSION_HOME=/transmission

CMD ["/usr/bin/transmission-daemon", "-f"]
