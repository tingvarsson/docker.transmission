#!/bin/sh

echo "Generating transmission settings.json from env variables"
# Ensure TRANSMISSION_HOME is created
dockerize -template /etc/transmission/settings.tmpl:/var/lib/transmission-daemon/settings.json /bin/true

echo "STARTING TRANSMISSION"
exec /usr/bin/transmission-daemon -f --logfile ${TRANSMISSION_HOME}/transmission.log --log-info

echo "Transmission startup script complete."
