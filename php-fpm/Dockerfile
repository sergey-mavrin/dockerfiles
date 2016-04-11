FROM centos

RUN rpm --import http://rpms.famillecollet.com/RPM-GPG-KEY-remi
RUN yum -y install yum-utils
RUN yum -y install http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
RUN yum-config-manager --enable remi,remi-php56
RUN yum -y update
RUN yum -y install php-fpm php-mysql php-xml php-process php-pecl-memcache php-cli php-pear
RUN sed -i "s/listen = 127.0.0.1:9000/listen = 0.0.0.0:9000/g" /etc/php-fpm.d/www.conf
RUN sed -i "s/pm = dynamic/pm = ondemand/g" /etc/php-fpm.d/www.conf
RUN sed -i "s/php_value\[session.save_path\] = \/var\/lib\/php\/session/php_value\[session.save_path\] = \/tmp/g" /etc/php-fpm.d/www.conf
RUN sed -i "s/user = apache/user = nobody/g" /etc/php-fpm.d/www.conf
RUN sed -i "s/group = apache/group = nobody/g" /etc/php-fpm.d/www.conf
RUN sed -i "s/listen.allowed_clients = 127.0.0.1/#listen.allowed_clients = any/g" /etc/php-fpm.d/www.conf
RUN mkdir /opt/www

ENTRYPOINT /usr/sbin/php-fpm --nodaemonize
