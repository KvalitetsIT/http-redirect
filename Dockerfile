FROM nginxinc/nginx-unprivileged:stable-alpine

USER root

RUN apk add --no-cache gettext

COPY nginx.template.conf /etc/nginx/templates/nginx.template.conf
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

USER 101

ENTRYPOINT ["/entrypoint.sh"]