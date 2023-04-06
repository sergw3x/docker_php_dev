FROM phpdockerio/php74-fpm:latest

RUN apt-get update \
    && apt-get -y --no-install-recommends install \
    php7.4-memcached \
    php7.4-memcache \
    php7.4-mbstring \
    php7.4-mysql \
    php7.4-intl \
    php7.4-xdebug \
    php7.4-interbase \
    php7.4-soap \
    php7.4-gd \
    php7.4-imagick \
    php7.4-mcrypt \
    php7.4-opcache \
    php7.4-zip \
    ssmtp \
    mailutils \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

ADD ./php.ini /etc/php/7.4/fpm/conf.d/90-php.ini
ADD ./php.ini /etc/php/7.4/cli/conf.d/90-php.ini

#COPY ../bitrix_biz_v15.0.6_modules/bx_demo /var/www
#COPY '/Users/serg/Documents/projects/PhpstormProjects/bx_demo/bitrix_biz_v15.0.6_modules/bx_demo' '/var/www'
#docker cp ../bitrix_biz_v15.0.6_modules/bx_demo/. php:/var/www

RUN usermod -u 1000 www-data

EXPOSE 9000
