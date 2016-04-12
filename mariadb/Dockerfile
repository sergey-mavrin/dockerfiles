FROM centos

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
COPY mariadb.repo /etc/yum.repos.d/
RUN yum -y update
RUN yum -y install mariadb-server

COPY optimized.cnf /etc/my.cnf.d/
RUN chmod 644 /etc/my.cnf.d/optimized.cnf
VOLUME /var/lib/mysql
RUN chown -R mysql:mysql /var/lib/mysql
RUN mkdir /root/bin
COPY mysql_backup_magento.sh /root/bin/
RUN chmod +x /root/bin/mysql_backup_magento.sh
RUN mkdir /opt/backup

ENTRYPOINT ["/docker-entrypoint.sh"]