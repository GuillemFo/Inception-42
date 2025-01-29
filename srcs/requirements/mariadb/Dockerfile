FROM debian:11.9

RUN	apt-get -y update && \
	apt -y install vim mariadb-server

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN mkdir -p /var/run/mysqld
RUN chown -R mysql:mysql /var/run/mysqld
RUN chmod 777 /var/run/mysqld


EXPOSE 3306

COPY --chmod=755 tools/maria_script.sh /usr/local/bin/maria_script.sh

RUN mysql_install_db

ENTRYPOINT [ "/usr/local/bin/maria_script.sh" ]


