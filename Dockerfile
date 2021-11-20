from php:8.0-fpm

RUN apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y && apt-get install -y libmcrypt-dev libonig-dev wget

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN docker-php-ext-install pdo mbstring mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql

RUN apt-get install libldap2-dev -y \
 && rm -rf /var/lib/apt/lists/* \
 && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ \
 && docker-php-ext-install ldap

RUN  wget https://get.symfony.com/cli/installer -O - | bash
RUN  cp $HOME/.symfony/bin/symfony /bin/

WORKDIR /app
COPY . /app
COPY .env /app

RUN chown -R www-data:www-data /app/var/cache/

RUN composer install

EXPOSE 8000
CMD symfony serve --port=8000