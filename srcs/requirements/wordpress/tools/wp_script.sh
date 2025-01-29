#! /bin/bash

if [ ! -f ./wp-config.php ]
then
	wp core download --allow-root
	wp config create --dbname=$MYSQL_DBS --dbuser=$MYSQL_USER --dbpass=$MYSQL_USER_PASS --dbhost=$MYSQL_HOSTNAME --allow-root
	echo papa
	wp core install --url=$DOMAIN_NAME --title=$WORDPRESS_TITLE --admin_user=$WORDPRESS_ADMIN --admin_password=$WORDPRESS_ADMIN_PASS --admin_email=$WORDPRESS_EMAIL --skip-email --dbhost=$MYSQL_HOSTNAME --dbname=$MYSQL_DBS --dbuser=$MYSQL_USER --dbpass=$MYSQL_USER_PASS --allow-root
	echo lolo
	wp user create $WORDPRESS_USER $WORDPRESS_EMAIL --role=author --user_pass=$WORDPRESS_USER_PASS --allow-root
	echo aaaaaa
	wp theme install twentytwentytwo --activate --allow-root
fi

/usr/sbin/php-fpm7.4 -F;
