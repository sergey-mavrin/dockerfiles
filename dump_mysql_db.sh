#!/bin/bash

CONTAINER_ID=`docker ps | grep mariadb | awk {'print $1'}`

docker exec ${CONTAINER_ID} /root/bin/mysql_backup_magento.sh
