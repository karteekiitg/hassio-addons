#!/usr/bin/with-contenv bashio

export WEBDAV_USERNAME=$(bashio::config 'WEBDAV_USERNAME')
export WEBDAV_PASSWORD=$(bashio::config 'WEBDAV_PASSWORD')
export FILEN_EMAIL=$(bashio::config 'FILEN_EMAIL')
export FILEN_PASSWORD=$(bashio::config 'FILEN_PASSWORD')
export FILEN_2FA_CODE=$(bashio::config 'FILEN_2FA_CODE')

bashio::log.info "credentials --- '${FILEN_EMAIL}:${WEBDAV_USERNAME}:${WEBDAV_PASSWORD}'..."
node filen.js webdav --email $(bashio::config 'FILEN_EMAIL') --password $(bashio::config 'FILEN_PASSWORD') --two-factor-code $(bashio::config 'FILEN_2FA_CODE') --data-dir /addon_config/ --w-https --w-user $(bashio::config 'WEBDAV_USERNAME') --w-password $(bashio::config 'WEBDAV_PASSWORD')
