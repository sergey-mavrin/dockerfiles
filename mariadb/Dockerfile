FROM centos

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
RUN yum -y install mariadb-server

COPY optimized.cnf /etc/my.cnf.d/
RUN chmod 644 /etc/my.cnf.d/optimized.cnf
RUN chown -R mysql:mysql /var/lib/mysql

ENTRYPOINT ["/docker-entrypoint.sh"]