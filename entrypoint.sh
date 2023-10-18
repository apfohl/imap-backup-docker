#!/bin/sh

set -e

CRON_EXPRESSION="${BACKUP_CRON_EXPRESSION:-@daily}"

echo "$CRON_EXPRESSION imap-backup backup 2>&1" | crontab -

crond -f -d 8

