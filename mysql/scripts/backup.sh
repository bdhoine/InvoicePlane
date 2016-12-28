#!/usr/bin/env bash

. config

mysqldump --create-options --add-drop-database -u${USER} -p${PASSWORD} --databases "${DATABASE}" > "${DATABASE}.sql"

exit 0
