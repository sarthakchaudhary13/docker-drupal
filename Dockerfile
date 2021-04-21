FROM drupal:8

RUN apt update \
    && apt-get --assume-yes install git \
    && rm -rf /var/lib/apt/lists/* \
    && git clone --branch 8.x-3.x --single-branch --depth 1 \
        https://git.drupalcode.org/project/bootstrap.git /var/www/html/themes/bootstrap \
    && chown -R www-data:www-data /var/www/html/themes/bootstrap



