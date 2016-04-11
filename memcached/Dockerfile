FROM centos

RUN yum -y update
RUN yum -y install memcached
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
RUN useradd memcache
USER memcache

ENTRYPOINT ["/entrypoint.sh"]
CMD ["memcached"]
