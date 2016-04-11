#!/bin/bash
        DATADIR="/var/lib/mysql"

        if [ ! -d "$DATADIR/mysql" ]; then

                echo 'Initializing database'
                mysql_install_db --user=mysql --datadir="$DATADIR" --rpm
                echo 'Database initialized'
        fi

        chown -R mysql:mysql "$DATADIR"
mysqld_safe
