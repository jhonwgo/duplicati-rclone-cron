#!/bin/bash
. /tmp/vars
rclone sync /backups -P $RNAME:$BUCKET
