FROM centos

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN yum -y update
RUN yum -y install http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
RUN yum -y install nginx nmap telnet
RUN mkdir /opt/www
COPY magento.conf /etc/nginx/conf.d/
RUN rm -f /etc/nginx/conf.d/default.conf
WORKDIR /etc/nginx

CMD ["nginx","-g","daemon off;"]
