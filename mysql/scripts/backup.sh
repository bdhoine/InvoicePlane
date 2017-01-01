#!/usr/bin/env bash

. config

mysqldump --create-options -u${USER} -p${PASSWORD} "${DATABASE}" "${INITIAL_TABLES//ip_/--ignore_table=${DATABASE}.ip_}" > "${DATABASE}.sql"

exit 0
