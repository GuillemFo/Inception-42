FROM debian:11.11

RUN	apt -y update && \
	apt -y upgrade && \
	apt -y install vim mariadb-server

CMD ["mysqld"]
