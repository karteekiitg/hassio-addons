#!/usr/bin/env bash
set -e

CONFIG_PATH=/data/options.json

WEBDAV_USERNAME=$(jq --raw-output '.WEBDAV_USERNAME // empty' $CONFIG_PATH)
WEBDAV_PASSWORD=$(jq --raw-output '.WEBDAV_PASSWORD // empty' $CONFIG_PATH)
FILEN_EMAIL=$(jq --raw-output '.FILEN_EMAIL // empty' $CONFIG_PATH)
FILEN_PASSWORD=$(jq --raw-output '.FILEN_PASSWORD // empty' $CONFIG_PATH)
FILEN_2FA_CODE=$(jq --raw-output '.FILEN_2FA_CODE // empty' $CONFIG_PATH)
FILEN_CLI_DATA_DIR="/config/"

echo "Filen Email: ${FILEN_EMAIL}"
echo "WebDAV Username: ${WEBDAV_USERNAME}"

if [ -z "${FILEN_2FA_CODE}" ]; then
    echo "2FA empty"
    node filen.js webdav --email $FILEN_EMAIL --password $FILEN_PASSWORD --data-dir /config/ --w-https --w-user $WEBDAV_USERNAME --w-password $WEBDAV_PASSWORD &
else
    echo "2FA provided"
    node filen.js webdav --email $FILEN_EMAIL --password $FILEN_PASSWORD --two-factor-code $FILEN_2FA_CODE --data-dir /config/ --w-https --w-user $WEBDAV_USERNAME --w-password $WEBDAV_PASSWORD &
fi

sleep 10

node filen.js export-auth-config

fg %1
