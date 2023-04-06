FROM phpdockerio/php71-fpm:latest

RUN apt-get update \
    && apt-get -y --no-install-recommends install \
    php7.1-memcached \
    php7.1-memcache \
    php7.1-mbstring \
    php7.1-mysql \
    php7.1-intl \
    php7.1-xdebug \
    php7.1-interbase \
    php7.1-soap \
    php7.1-gd \
    php7.1-imagick \
    php7.1-mcrypt \
    php7.1-opcache \
    php7.1-zip \
    ssmtp \
    mailutils \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

ADD ./php.ini /etc/php/7.1/fpm/conf.d/90-php.ini
ADD ./php.ini /etc/php/7.1/cli/conf.d/90-php.ini

#COPY ../bitrix_biz_v15.0.6_modules/bx_demo /var/www
#COPY '/Users/serg/Documents/projects/PhpstormProjects/bx_demo/bitrix_biz_v15.0.6_modules/bx_demo' '/var/www'
#docker cp ../bitrix_biz_v15.0.6_modules/bx_demo/. php:/var/www

RUN usermod -u 1000 www-data

EXPOSE 9000
