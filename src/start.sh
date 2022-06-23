#!/bin/sh
echo "$CRON_SCHEDULE sh /root/copy.sh" > /var/spool/cron/crontabs/root
chmod 600 /var/spool/cron/crontabs/root
export -p > /tmp/vars
cron -f

