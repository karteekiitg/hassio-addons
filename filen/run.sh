#!/bin/sh
WEBDAV_USERNAME=$(bashio::config 'WEBDAV_USERNAME')
WEBDAV_PASSWORD=$(bashio::config 'WEBDAV_PASSWORD')
FILEN_EMAIL=$(bashio::config 'FILEN_EMAIL')
bashio::log.info "credentials --- '${FILEN_EMAIL}:${WEBDAV_USERNAME}:${WEBDAV_PASSWORD}'..."
node filen.js webdav --email $(bashio::config 'FILEN_EMAIL') --password $(bashio::config 'FILEN_PASSWORD') --two-factor-code $(bashio::config 'FILEN_2FA_CODE') --data-dir /addon_config/ --w-https --w-user $(bashio::config 'WEBDAV_USERNAME') --w-password $(bashio::config 'WEBDAV_PASSWORD')
