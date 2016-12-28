#!/usr/bin/env bash

. config

mysql -u${USER} -p${PASSWORD} -e "source ${DATABASE}.sql"

exit 0
