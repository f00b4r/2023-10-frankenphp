FROM dunglas/frankenphp:1.0.0-beta.2-bookworm

RUN echo "variables_order = \"EGPCS\"" >> $PHP_INI_DIR/999-php.ini

WORKDIR /srv

COPY . /srv
COPY Caddyfile /etc/caddy/Caddyfile
