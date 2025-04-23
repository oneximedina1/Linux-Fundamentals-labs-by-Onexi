#!/bin/bash
find /home/onexi/lab/day11_cron_jobs -name "*.log" -type f -mmin +5 -exec rm {} \;
*/10 * * * * /home/onexi/lab/day11_cron_jobs/cleanup_logs.sh
*/1 * * * * /home/onexi/lab/day11_cron_jobs/cleanup_logs.sh

