#!/bin/bash

mongorestore --host localhost --port 27017 --username $MONGO_INITDB_ROOT_USERNAME --password $MONGO_INITDB_ROOT_PASSWORD $BACKUP_PATH