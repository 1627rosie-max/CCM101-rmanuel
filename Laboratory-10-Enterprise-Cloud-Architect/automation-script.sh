#!/bin/bash

BACKUP_DIR="$HOME/ccm101-backups"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/wordpress_db_$DATE.sql.gz"

mkdir -p "$BACKUP_DIR"

docker exec -e MYSQL_PWD='root_password' ccm101-mysql \
    mysqldump -u root wordpress | gzip > "$BACKUP_FILE"

if [ $? -eq 0 ]; then
    echo "Database backup successful: $BACKUP_FILE"
else
    echo "Database backup failed."
    exit 1
fi
