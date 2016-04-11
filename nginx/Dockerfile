FROM centos

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN yum -y update
RUN yum -y install http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
RUN yum -y install nginx
RUN rm -rf /etc/nginx/*
VOLUME /etc/nginx
RUN mkdir /opt/www
WORKDIR /etc/nginx

CMD ["nginx","-g","daemon off;"]
