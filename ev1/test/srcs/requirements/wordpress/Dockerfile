FROM debian:11.9

RUN apt-get -y update && \
	apt install -y \
	curl \
	mariadb-client \
	php7.4-fpm \
	php7.4-mysqli

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY conf/www.conf /etc/php/7.4/fpm/pool.d/

RUN mkdir -p /run/php
RUN chmod 755 /run/php

COPY --chmod=755 ./tools/wp_script.sh /usr/local/bin/wp_script.sh

EXPOSE 9000

WORKDIR /var/www/html/

ENTRYPOINT [ "/usr/local/bin/wp_script.sh" ]
