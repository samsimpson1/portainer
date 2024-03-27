#!/bin/bash

while true; do
  echo "Start backup"
  /usr/bin/autorestic backup -v -a -c /autorestic.yaml
  echo "Sleeping for ${BACKUP_INTERVAL_SECONDS}s"
  sleep ${BACKUP_INTERVAL_SECONDS}
done