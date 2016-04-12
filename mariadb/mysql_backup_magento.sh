#!/bin/bash

BACKUP_DIR="/opt/backup"

if [[ -e ${BACKUP_DIR}/config.ini ]]
    then
	source ${BACKUP_DIR}/config.ini
    else
	echo "There is no config file in ${BACKUP_DIR}"
	exit 1
fi

mysqldump -u ${DBUSER} -p${DBPASS} --single-transaction -qn --routines --no-data ${DB} | gzip -c > ${BACKUP_DIR}/${DB}_${DATE}.sql.gz
mysqldump -u ${DBUSER} -p${DBPASS} --single-transaction -qn --no-create-info --skip-triggers ${IGNORE_TABLES} ${DB} | gzip -c >> ${BACKUP_DIR}/${DB}_${DATE}.sql.gz

