FROM alpine:latest

MAINTAINER ben

COPY ["start.sh", "/root/start.sh"]
COPY ["default.conf", "/etc/nginx/http.d/default.conf"]
WORKDIR /root

RUN apk add --no-cache php8 \
    php8-common \
    php8-fpm \
    php8-pdo \
    php8-opcache \
    php8-zip \
    php8-phar \
    php8-iconv \
    php8-cli \
    php8-curl \
    php8-openssl \
    php8-mbstring \
    php8-tokenizer \
    php8-fileinfo \
    php8-json \
    php8-xml \
    php8-xmlwriter \
    php8-simplexml \
    php8-dom \
    php8-pdo_mysql \
    php8-pdo_sqlite \
    php8-tokenizer \
    php8-pecl-redis \
    nginx \
    curl \
    openrc \
&& openrc \
&& ln -f /usr/bin/php8 /usr/bin/php \
&& touch /run/openrc/softlevel \
&& curl -s https://getcomposer.org/installer | php8 \
&& mv composer.phar /usr/bin/composer 

# CMD ["sh", "start.sh"]
# CMD ["tail", "-f", "/dev/null"]

