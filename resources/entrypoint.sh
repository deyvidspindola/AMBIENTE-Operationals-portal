#!/usr/bin/env bash
#
# @file      entrypoint.sh
# @version   0.0.1
# @brief     Docker entrypoint script
#
# ------------------------------------------------------------------------------
#
# Leave if any command fails
set -e
# Run Apache in background and output the logs in foreground
service apache2 start
tail -f /var/log/apache2/access.log
# Used for debugging if no foreground application is being called
# while true; do
#    date
#    sleep 5
# done