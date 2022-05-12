#!/usr/bin/env bash

index=1

cat << _EOF_ >> /home/isucon/env.sh
MYSQL_HOST="127.0.0.1"
MYSQL_PORT=3306
MYSQL_USER=isucon
MYSQL_DBNAME=isucondition
MYSQL_PASS=isucon
POST_ISUCONDITION_TARGET_BASE_URL="https://isucondition-${index}.t.isucon.dev"
_EOF_
chown isucon: /home/isucon/env.sh

systemctl enable --now isucondition.go.service
