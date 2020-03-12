#!/bin/bash

set -x
set -e

. /tmp/openrc.sh

eval "/usr/bin/restic backup --tag filesystem --one-file-system /"


sleep 5

restic unlock

eval "/usr/bin/restic forget --tag filesystem --keep-daily 7 --keep-weekly 4 --keep-monthly 6 --keep-yearly 3 --prune"


> /tmp/Backups_plan

/usr/bin/restic snapshots --no-lock > /tmp/Backups_plan