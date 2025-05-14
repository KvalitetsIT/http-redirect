#!/bin/sh

set -e

# Generer nginx config fra template med DOMAIN
envsubst '$DOMAIN' < /etc/nginx/templates/nginx.template.conf > /etc/nginx/conf.d/default.conf

# Kør nginx som unprivileged bruger
exec /usr/sbin/nginx -g 'daemon off;'
