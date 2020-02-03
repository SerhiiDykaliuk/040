#!/bin/bash
SOERCE_DIR=$1
BACKUP_DIR=$2
DATE=`date +%Y%m%d`
find ${SOURCE_DIR}/ -mindepth 1 -mtime -1 -exec rsync -R {} $BACKUP_DIR/${DATE} \;

