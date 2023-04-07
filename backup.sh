#!/bin/bash

# get the current time
CURRENT_TIME=$(date "+%Y-%m-%d_%H-%M-%S")
# setup the backup folder
BACKUP_DIR=/backups/$CURRENT_TIME
# run the backup command
mongodump --host localhost --port 27017 --username $MONGO_INITDB_ROOT_USERNAME --password $MONGO_INITDB_ROOT_PASSWORD --out $BACKUP_DIR
# compress all the backup
tar -czf "$BACKUP_DIR.tar.gz" --remove-files "$BACKUP_DIR"