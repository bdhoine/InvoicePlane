#!/usr/bin/env bash

. config

# shellcheck disable=SC2086
mysqldump --create-options -u${USER} -p${PASSWORD} "${DATABASE}" ${INITIAL_TABLES} > "initial.sql"

exit 0
