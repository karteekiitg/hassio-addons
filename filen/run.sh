#!/bin/sh
node filen.js webdav --email $(bashio::config 'FILEN_EMAIL') --password $(bashio::config 'FILEN_PASSWORD') --two-factor-code $(bashio::config 'FILEN_2FA_CODE') --data-dir /addon_config/ --w-https --w-user $(bashio::config 'WEBDAV_USERNAME') --w-password $(bashio::config 'WEBDAV_PASSWORD')
