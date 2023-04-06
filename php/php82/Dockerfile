FROM phpdockerio/php:8.2-fpm

RUN apt-get update \
    && apt-get -y --no-install-recommends install \
    php8.2-memcached \
    php8.2-memcache \
    php8.2-mbstring \
    php8.2-mysql \
    php8.2-intl \
    php8.2-xdebug \
    php8.2-interbase \
    php8.2-soap \
    php8.2-gd \
    php8.2-imagick \
    php8.2-mcrypt \
    php8.2-opcache \
    php8.2-zip \
    ssmtp \
    mailutils \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

ADD ./php.ini /etc/php/8.2/fpm/conf.d/90-php.ini
ADD ./php.ini /etc/php/8.2/cli/conf.d/90-php.ini

#COPY ../bitrix_biz_v15.0.6_modules/bx_demo /var/www
#COPY '/Users/serg/Documents/projects/PhpstormProjects/bx_demo/bitrix_biz_v15.0.6_modules/bx_demo' '/var/www'
#docker cp ../bitrix_biz_v15.0.6_modules/bx_demo/. php:/var/www

RUN usermod -u 1000 www-data

EXPOSE 9000
