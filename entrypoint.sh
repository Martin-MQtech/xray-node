#!/bin/sh
sed -e "s/__UUID__/${UUID}/g" -e "s/__WSPATH__/${WSPATH}/g" -e "s/__PORT__/${PORTX}/g" /etc/xray/template.json > /etc/xray/config.json
exec /usr/bin/xray -config /etc/xray/config.json
