#!/bin/sh

cd /usr/share/nginx/html && \
/usr/sbin/php-fpm81 && \
/usr/sbin/nginx -g "daemon off;"
