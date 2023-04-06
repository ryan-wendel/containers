FROM alpine:latest

COPY files/entrypoint.sh /
COPY files/nginx.conf /etc/nginx/nginx.conf
COPY files/www.conf /etc/php81/php-fpm.d/www.conf

RUN apk add --no-cache \
    nginx \
    php81 \
    php81-common \
    php81-json \
    php81-pdo_mysql \
    php81-opcache \
    php81-zlib \
    php81-mbstring \
    php81-curl \
    php81-fpm && \
    mkdir -p /usr/share/nginx/html && \
    chown -R root:root /usr/share/nginx/html

# Switch to use a non-root user from here on
USER nginx

expose 8080

ENTRYPOINT ["/entrypoint.sh"]

# Configure a healthcheck to validate that everything is up & running
HEALTHCHECK --timeout=10s CMD curl --silent --fail http://127.0.0.1:8080/ping
