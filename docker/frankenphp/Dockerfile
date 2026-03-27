FROM dunglas/frankenphp:php8.5

RUN apt update && apt install  --no-install-recommends -y \
    git zip unzip acl file gettext vim curl

RUN rm -rf /var/lib/apt/lists/*

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

RUN set -eux; \
    install-php-extensions xdebug gd intl zip curl redis mbstring ctype opcache xml pdo_pgsql


COPY php.ini /usr/local/etc/php/conf.d/config.ini

WORKDIR /app
