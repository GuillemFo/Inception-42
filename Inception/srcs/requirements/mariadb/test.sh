# !/bin/bash

service mariadb start

if [ ! -d /var/lib/mysql/${MYSQL_DB} ];
then

	mysql -u ${MYSQL_ROOT} -p${MYSQL_ROOT_PASS} -e "CREATE DATABASE $MYSQL_DB;"
	mysql -e "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_USER_PASS'"
	mysql -e "GRANT ALL ON $MYSQL_DB.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_USER_PASS' WITH GRANT OPTION;"
	mysql -e "FLISH PRIVILEGES;"
	mysql -e "ALTER USER '${MYSQL_ROOT}'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASS}';"
fi

mysqladmin -u ${MYSQL_ROOT} --password=${MYSQL_ROOT_PASS} shutdown

mysqld
