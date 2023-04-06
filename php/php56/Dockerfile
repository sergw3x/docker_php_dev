# Для начала указываем исходный образ, он будет использован как основа
FROM php:5.6-fpm

# RUN выполняет идущую за ней команду в контексте нашего образа.
# В данном случае мы установим некоторые зависимости и модули PHP.
# Для установки модулей используем команду docker-php-ext-install.
# На каждый RUN создается новый слой в образе, поэтому рекомендуется объединять команды.
RUN apt-get update && apt-get install -y \
        curl \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
    && docker-php-ext-install -j$(nproc) iconv mcrypt mbstring mysql mysqli pdo_mysql zip \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd

#Install xdebug
#RUN pecl install xdebug-2.6.1 && docker-php-ext-enable xdebug

# Добавим свой php.ini, можем в нем определять свои значения конфига
ADD php.ini /usr/local/etc/php/conf.d/40-custom.ini

# Указываем рабочую директорию для PHP
WORKDIR /var/www

# Запускаем контейнер
# Из документации: The main purpose of a CMD is to provide defaults for an executing container. These defaults can include an executable,
# or they can omit the executable, in which case you must specify an ENTRYPOINT instruction as well.
CMD ["php-fpm"]









#FROM phpdockerio/php71-fpm:latest
#
#RUN apt-get update \
#    && apt-get -y --no-install-recommends install \
#    php7.1-memcached \
#    php7.1-memcache \
#    php7.1-mbstring \
##    php7.1-mysql \
#    php7.1-intl \
##    php7.1-xdebug \
#    php7.1-interbase \
#    php7.1-soap \
#    php7.1-gd \
#    php7.1-imagick \
#    php7.1-mcrypt \
#    php7.1-opcache \
#    php7.1-common \
#    php7.1-zip \
#    ssmtp \
#    mailutils \
#    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
#
#RUN docker-php-ext-install mysqli
#
#ADD ./php.ini /etc/php/7.1/fpm/conf.d/90-php.ini
#ADD ./php.ini /etc/php/7.1/cli/conf.d/90-php.ini
#ADD ./ssmtp.conf /etc/ssmtp/ssmtp.conf
#ADD ./revaliases /etc/ssmtp/revaliases
#
#RUN usermod -u 1000 www-data
#
#EXPOSE 9000

#
#FROM php:7.4-fpm-alpine
#
#RUN docker-php-ext-install -j$(nproc) mysqli opcache
#
#RUN apk add --update --no-cache libgd libpng-dev libjpeg-turbo-dev freetype-dev
#
#RUN docker-php-ext-install -j$(nproc) gd
#
#ADD php.ini /usr/local/etc/php.ini
