#!/usr/bin/env bash
set -e

CONFIG_PATH=/data/options.json

WEBDAV_USERNAME=$(jq --raw-output '.WEBDAV_USERNAME // empty' $CONFIG_PATH)
WEBDAV_PASSWORD=$(jq --raw-output '.WEBDAV_PASSWORD // empty' $CONFIG_PATH)
FILEN_EMAIL=$(jq --raw-output '.FILEN_EMAIL // empty' $CONFIG_PATH)
FILEN_PASSWORD=$(jq --raw-output '.FILEN_PASSWORD // empty' $CONFIG_PATH)
FILEN_2FA_CODE=$(jq --raw-output '.FILEN_2FA_CODE // empty' $CONFIG_PATH)

echo "${WEBDAV_USERNAME}"
echo "${WEBDAV_PASSWORD}"
echo "${FILEN_EMAIL}"
echo "${FILEN_PASSWORD}"
echo "${FILEN_2FA_CODE}"

node filen.js webdav --email $FILEN_EMAIL --password $FILEN_PASSWORD --two-factor-code $FILEN_2FA_CODE --data-dir /addon_config/ --w-https --w-user $WEBDAV_USERNAME --w-password $WEBDAV_PASSWORD
